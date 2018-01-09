require_relative 'app1.rb'
require_relative 'Car.rb'
car1 = Car.new("Honda",2008,"2L")
person1 = Person.new("Merril",27,"male",1.64,63,car1)

puts person1.car.brand

