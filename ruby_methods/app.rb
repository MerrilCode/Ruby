#Methods should be defined before calling them

def say_hello
	puts "Hellooo"
end

def add_numbers(num1,num2)
	puts num1+num2
end

def add_array(*numbers)
	numbers.reduce(:+) # returns the last line
end

def create_user(name,course ="Engineering") #defaulting a value for second argument
	"#{name} #{course}"
end

say_hello
add_numbers(2,3)
puts add_array(2,17,535,43,5,53,5)
puts create_user("Merril","Engineer")