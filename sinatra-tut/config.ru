require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'controller/cat_controller.rb'

# set :public_folder, 'public'


run CatController
