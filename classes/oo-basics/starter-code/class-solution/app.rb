require_relative 'square.rb'

square = Square.new 5

puts "Area: #{square.area} Perimeter: #{square.perimeter}"

square.scale 10

puts "Area: #{square.area} Perimeter: #{square.perimeter}"