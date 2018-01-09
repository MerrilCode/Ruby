class Person
	attr_accessor :name,:age,:sex,:height,:weight,:car

	def initialize(name,age,sex,height,weight,car)
		self.name = name
		self.age = age
		self.sex = sex
		self.height = height
		self.weight = weight
		self.car = car
	end
end