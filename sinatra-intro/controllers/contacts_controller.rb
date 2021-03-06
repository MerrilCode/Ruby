class ContactsController < Sinatra::Base
 # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }
  
  configure :development do
      register Sinatra::Reloader
  end

	$contacts = [{
			id:0,
			name:"merril",
			email: "mmathew@spartaglobal.com"
		},
		{
			id: 1,
			name: "Markson Aigbodi",
			email: "maigbody@spartaglobal.com"
		},
		{
			id: 2,
			name: "Jack McGregor",
			email: "jmcgregor@spartaglobal.com"
		}
	]

	before do 
		@title = "Address Book"
	end

#INDEX

	get '/contacts' do
		@contacts = $contacts
	  	erb :"contacts/index"
	end

	get '/contacts/new' do
		@name = "Name"
		@email = "Email:"
		erb :"contacts/new"
	end

	# EDIT

	get '/contacts/:id/edit' do
		id = params[:id]
		@contact = $contacts[id.to_i]
		erb :"contacts/edit"
	end

	#UPDATE
    put '/contacts/:id' do
        id = params[:id].to_i
        # contact = $contacts[id]
        # # id = params[:id]
      
        # contact[params[:name]] = params[:name]
        # contact[params[:email]] = params[:email]
        # puts params
        edited_contact = {
        	id: id,
        	name: params[:name],
        	email: params[:email]
        }
        $contacts[id] = edited_contact
        redirect "/contacts/#{id}"

       
    end

	# NEW
	get '/contacts/test' do
		erb :"contacts/test"
	end

	# SHOW
	get '/contacts/:id' do
		id = params[:id]
		@contact = $contacts[id.to_i]
		erb :"contacts/show"
		# "show: #{id}"
	end

	# POST

	post '/contacts' do
		new_contact = {
			id: $contacts.length,
			name: params[:name],
			email: params[:email]
		}
		$contacts.push(new_contact)
		redirect "/contacts"
	end


	#DELETE

	delete '/contacts/:id' do
		id = params[:id].to_i
		$contacts.delete_at(id)
		redirect '/contacts'
	end
	
end