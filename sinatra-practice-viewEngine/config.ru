require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controller/car_controller'

use Rack::Reloader

use Rack::MethodOverride

run CarController