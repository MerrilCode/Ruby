class ContactsController < Sinatra::Base

	# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") } 

  configure :development do
  	register Sinatra::Reloader
  end

  $contacts = [
  	{
  		id: 0,
  		name: "Ollie Holden",
  		email: "odholden@gmail.com"
  	}, 
  	{
  		id: 1,
  		name: "Markson Aigbodi",
  		email: "maigbodi@spartaglobal.com"
  	},
  	{
  		id: 2,
  		name: "Jack McGregor",
  		email: "jmcgregor@spartaglobal.com"
  	}
  ]


	#Index
	get '/contacts' do
		@title = "Contacts"
		@contacts = $contacts
		erb :"contacts/index" 
	end

	#New
	get '/contacts/new' do
	  erb :"contacts/new"
	end

	#Show
	get '/contacts/:id' do
		id = params[:id]
		@contact = $contacts[id.to_i]
		erb :"contacts/show"
	end

	#Create
	post '/contacts' do
		new_contact = {
			id: $contacts.length,
			name: params[:name],
			email: params[:email]
		}
		$contacts.push(new_contact)
		redirect "/contacts"
	end

	# Edit
	get '/contacts/:id/edit' do
		id = params[:id]
		@contact = $contacts[id.to_i]
		erb :"contacts/edit"
	end

	# Update
	put '/contacts/:id' do
		id = params[:id].to_i
		edited_contact = {
			id: id,
			name: params[:name],
			email: params[:email]
		}
		$contacts[id] = edited_contact
		redirect "/contacts/#{id}"
	end

	#Delete
	# delete '/contacts/:id' do
	#   id = params[:id].to_i
	#   $contacts.delete_at(id)
	#   redirect '/contacts'
	# end

	# DELETE
	delete '/contacts/:id' do
    id = params[:id].to_i
    del_contact = {
        id: id,
        name: "",
        email: ""
    }
    $contacts[id] = del_contact
    redirect "/contacts"
	end
end



