require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/contacts_controller'

run ContactsController