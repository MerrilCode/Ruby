class ContactsController < Sinatra::Base

#INDEX

get '/contacts' do
  "INDEX"
end
# SHOW
get '/contacts/:id' do
	id = params[:id]
	"show: #{id}"
end

# POST

post '/contacts/post' do
	"POST"
end

# NEW
get '/contacts/new' do
	"new"
end

# UPADATE

put '/contacts/update' do
	"update"
end
#DELETE

delete'/contacts/:id' do
	id = params[:id]
	"DELETE: #{id}"
end
	
end