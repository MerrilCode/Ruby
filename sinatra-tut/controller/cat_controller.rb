class CatController < Sinatra::Base

	get '/cat' do
		"<a href='http://localhost:9292/cat/show'>SHOW CAT</a>"
	end

	get '/cat/show' do
		"<a href='https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg'> SHOW CAT</a>"
	end

	post '/cat/:id' do
		id = params[:id]
		"POST: #{id}"
	end

	get'/cat/


end