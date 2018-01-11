require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/contacts_controller'

use Rack::Reloader

use Rack::MethodOverride

run ContactsController