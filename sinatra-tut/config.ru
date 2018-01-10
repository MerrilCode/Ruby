require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'controller/cat_controller'

run CatController
