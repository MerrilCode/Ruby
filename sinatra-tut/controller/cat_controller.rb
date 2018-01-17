class CatController < Sinatra::Base


	get '/cat' do
		"<a href='http://localhost:9292/cat/show'>SHOW CAT</a>"
	end

	get '/cat/show' do
		"<a href='https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg'> SHOW CAT</a>"
	end

	get '/game' do
		File.new("game-test.html")
		# name = params[:name]
		 # send_file File.join(settings.public_folder, 'game-test.html')
		  "GAME"
		 # send_file File.join(settings.public_folder, './game-test.html')
	end

	post 'cat/post' do
		"POST"
	end

	# put 'cat/:id' do
	# 	id = params[:id]
	# 	"PUT: #{id}"
	# end





end