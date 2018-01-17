class Square
	attr_accessor :length

	def initialize(length)
		self.length = length
	end

	def scale factor
		self.length *= factor
	end
	
	def area 
	  self.length** 2
	end

	def perimeter
	  self.length * 4
	end
end