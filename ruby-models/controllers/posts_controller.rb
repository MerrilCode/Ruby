class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  get '/posts' do

      @title = "Blog posts"

      @posts = Post.all
  
      erb :'posts/index'
  
  end

  get '/posts/new'  do

    # create an empty post
    @post = Post.new

    erb :'posts/new'
    
  end
    
  get '/posts/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    # @post = $posts[id]
    @post = Post.find id
    
    erb :'posts/show'
    
  end
    
  post '/posts' do
    
    post = Post.new

    # bind the values
    post.title = params[:title]
    post.body = params[:body]

    # save the post
    post.save

    redirect "/posts"
    
  end
    
  put '/posts/:id'  do
    
    # data is gathered in the params object
    id = params[:id].to_i
      
    # load the object with the id
    post = Post.find id

    # update the values
    post.title = params[:title]
    post.body = params[:body]

    # save the post
    post.save
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/posts";
    
  end
    
  delete '/posts/:id'  do
    
    # get the ID
    id = params[:id].to_i

    # delete the post from the database
    # $posts.delete_at(id)
    Post.destroy id

    # redirect back to the homepage
    redirect "/posts"
    
  end
    
  get '/posts/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    # @post = $posts[id]
    @post = Post.find id

    erb :'posts/edit'
    
  end

end