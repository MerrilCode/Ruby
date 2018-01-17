class CarController < Sinatra::Base
	set :root, File.join(File.dirname(__FILE__),'..')
	set :views, Proc.new{File.join(root,"views")}
	 
	configure :development do
	    register Sinatra::Reloader
	end

	# DISPLAY THE CARS ON INDEX
	get '/cars' do
		@cars = Post.all
	  	erb :"cars/index"
	end

	# #NEW CAR
	get '/cars/new' do
		@name = "Name"
		@year = "Year"
		@url  = "url to an image"
		erb :"cars/new"
	end
	# EDIT CAR
	get '/cars/:id/edit' do
		id = params[:id]
		@car = Post.find id
		erb :"cars/edit"
	end

# 	#UPDATE CAR

	put '/cars/:id'  do
    
	    id = params[:id].to_i
	    post = Post.new
	    post.id   = params[:id]
	    post.name = params[:name]
	    post.year = params[:year]
	    post.url  = params[:url]
	    post.save
	    redirect "/cars/#{id}";  
  	end

	
# #SHOW CAR
	get '/cars/:id' do
		id = params[:id]
		@car = Post.find id
		erb :"cars/show"
	end

# # ADD NEW CAR
	post '/cars' do
		post = Post.new
		post.name = params[:name]
		post.year = params[:year]
		post.url  = params[:url]
		post.save
		redirect "/cars"
	end

# 	#DELETE CAR
	delete '/cars/:id' do
		id = params[:id].to_i
		Post.destroy id
		redirect '/cars'
	end

end