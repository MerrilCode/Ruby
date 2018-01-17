require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?
require './models/post.rb'
require_relative './controllers/posts_controller.rb'

run PostsController