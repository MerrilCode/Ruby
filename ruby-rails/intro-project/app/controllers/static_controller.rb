class StaticController < ApplicationController
	
	def landing
	end

	def hello # method name has to match up with the html file name
		@name = params[:name]
	end
end