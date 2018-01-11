class CarController < Sinatra::Base
	set :root, File.join(File.dirname(__FILE__),'..')
	set :views, Proc.new{File.join(root,"views")}
	 
	configure :development do
	    register Sinatra::Reloader
	end
# CARS DATA
	$cars = [{
			id: 0,
			brand: "Aston Martin",
			year: 2014,
			image: "https://www.driving.co.uk/s3/st-driving-prod/uploads/2016/12/db11-08.jpg"
	  	},
	  	{
		  	id: 1,
		  	brand: "Ferrari",
		  	year: 2015,
		  	image: "https://buyersguide.caranddriver.com/media/assets/submodel/8119.jpg"
		},
		{
			id: 2,
			brand: "McLaren",
			year: 2010,
			image: "https://cdn.shopify.com/s/files/1/1429/2252/products/135-75110-01.jpg?v=1484296870"
		}

	  ]
# DISPLAY THE CARS ON INDEX
	get '/cars' do
		@cars = $cars
	  	erb :"cars/index"
	end

	#NEW CAR
	get '/cars/new' do
		@brand = "Brand"
		@year = "Year"
		erb :"cars/new"
	end
# EDIT CAR
	get '/cars/:id/edit' do
		id = params[:id]
		@car = $cars[id.to_i]
		erb :"cars/edit"
	end

	#UPDATE CAR

	put '/cars/:id'  do
    
	    id = params[:id].to_i
	    puts id
	      
	    edited_car = {
        	id: id,
        	brand: params[:brand],
        	year: params[:year]
        }
        $cars[id] = edited_car
	      
	    redirect "/cars/#{id}";  
  	end

	
#SHOW CAR
	get '/cars/:id' do
		id = params[:id]
		@car = $cars[id.to_i]
		erb :"cars/show"
	end
# ADD NEW CAR
	post '/cars' do
		new_car = {
			id: $cars.length,
			brand: params[:brand],
			year: params[:year]
		}
		$cars.push(new_car)
		redirect "/cars"
	end

	#DELETE CAR
	delete '/cars/:id' do
		id = params[:id].to_i
		$cars.delete_at(id)
		redirect '/cars'
	end




end