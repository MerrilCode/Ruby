class Post

  attr_accessor :id, :name, :year, :url

  def save

      conn = Post.open_connection

      if(!self.id) 
        # Insert a new record in to the database
        sql = "INSERT INTO cars (name , year, url) VALUES ( '#{self.name}', '#{self.year}','#{self.url}')"
      else 
        # Update an existing one
        sql = "UPDATE cars SET name='#{self.name}', year='#{self.year}', url='#{self.url}' WHERE id = #{self.id}"
      end

      conn.exec(sql)

  end

  def self.open_connection

      conn = PG.connect( dbname: "cars" )

  end

  def self.all

        conn = self.open_connection

        sql = "SELECT id,name,year,url FROM cars ORDER BY id"

        results = conn.exec(sql) # an array of hashes of each raw
        # create an array of post objects
        posts = results.map do |tuple| # each raw is converted into an object of this class(self) so can access :id,:title,:body
            self.hydrate tuple
        end
        posts

  end

  def self.find id

        conn = self.open_connection

        sql = "SELECT * FROM cars WHERE id = #{id} LIMIT 1"

        # PG always returns an array
        posts = conn.exec(sql)
    
        # bind just the first and return
        post = self.hydrate posts[0]

        post

  end

  def self.destroy id

      conn = self.open_connection

      sql = "DELETE FROM cars where id = #{id}"

      # handle delete here
      conn.exec(sql)

  end

  def self.hydrate post_data

    post = Post.new

    post.id = post_data['id']
    post.name = post_data['name']
    post.year = post_data['year']
    post.url = post_data['url']

    post

  end

end