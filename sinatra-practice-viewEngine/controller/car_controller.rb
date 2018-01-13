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

	#NEW CAR
# 	get '/cars/new' do
# 		@brand = "Brand"
# 		@year = "Year"
# 		erb :"cars/new"
# 	end
# 	# EDIT CAR
# 	get '/cars/:id/edit' do
# 		id = params[:id]
# 		@car = $cars[id.to_i]
# 		erb :"cars/edit"
# 	end

# 	#UPDATE CAR

# 	put '/cars/:id'  do
    
# 	    id = params[:id].to_i
# 	    puts id
	      
# 	    edited_car = {
#         	id: id,
#         	brand: params[:brand],
#         	year: params[:year]
#         }
#         $cars[id] = edited_car
	      
# 	    redirect "/cars/#{id}";  
#   	end

	
# #SHOW CAR
# 	get '/cars/:id' do
# 		id = params[:id]
# 		@car = $cars[id.to_i]
# 		erb :"cars/show"
# 	end

# # ADD NEW CAR
# 	post '/cars' do
# 		new_car = {
# 			id: $cars.length,
# 			brand: params[:brand],
# 			year: params[:year]
# 		}
# 		$cars.push(new_car)
# 		redirect "/cars"
# 	end

# 	#DELETE CAR
# 	delete '/cars/:id' do
# 		id = params[:id].to_i
# 		$cars.delete_at(id)
# 		redirect '/cars'
# 	end

end