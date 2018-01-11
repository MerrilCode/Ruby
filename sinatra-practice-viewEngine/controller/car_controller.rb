class CarController < Sinatra::Base
	set :root, File.join(File.dirname(__FILE__),'..')
	set :views, Proc.new{File.join(root,"views")}
	 
	configure :development do
	    register Sinatra::Reloader
	end

	$cars = [{
			id: 0,
			brand: "Aston Martin",
			year: 2014
	  	},
	  	{
		  	id: 1,
		  	brand: "Ferrari",
		  	year: 2015
		},
		{
			id: 2,
			brand: "McLaren",
			year: 2010
		}

	  ]

	get '/cars' do
		@cars = $cars
	  	erb :"cars/index"
	end

	#NEW
	get '/cars/new' do
		@brand = "Brand"
		@year = "Year"
		erb :"cars/new"
	end

	get '/cars/:id/edit' do
		id = params[:id]
		@car = $cars[id.to_i]
		erb :"cars/edit"
	end

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

	
#SHOW
	get '/cars/:id' do
		id = params[:id]
		@car = $cars[id.to_i]
		erb :"cars/show"
	end

	post '/cars' do
		new_car = {
			id: $cars.length,
			brand: params[:brand],
			year: params[:year]
		}
		$cars.push(new_car)
		redirect "/cars"
	end

	#DELETE
	delete '/cars/:id' do
		id = params[:id].to_i
		$cars.delete_at(id)
		redirect '/cars'
	end




end