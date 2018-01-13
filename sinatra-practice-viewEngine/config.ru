require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require './models/post'
require_relative './controller/car_controller'

use Rack::Reloader

use Rack::MethodOverride

run CarController