# Write a function that multiplies two numbers and returns the result
def multiply(num1,num2)
	num1*num2
end


# Write a function that multiplies three numbers and returns the result
def add_three(num1,num2,num3)
	num1+num2+num3
end


# Write a function that returns the smaller of 2 numbers
def smallest_number(num1,num2)
	[num1,num2].min 
end



# Write a function that returns the largest of 3 numbers
def max_of_three(num1,num2,num3)
	[num1,num2,num3].max
end

# Write a function that returns the reverse a string 
def reverse_string(string)
	string.reverse
end


# write a function that returns the year of birth from an age
def disemvowel(string)
	string.delete "aeiou"
	
end


# write a fucntion that removes all ODD number from an array
def  remove_odd (array)
	array.delete_if &:odd?
end


# write a fucntion that removes all EVEN number from an array
def remove_even(array)
	array.delete_if(&:even?)
end


# write a function that takes an array of strings and returns the string with the longest char langth
def longest_string(array)
	array.max_by(&:length)
end


# discard the first 3 elements of an array, 
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
	array.shift 


# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
# convert_array_to_a_hash


# Write a functino that takes any number and returns a value based on these rules 

# But for multiples of three print "Fizz" instead of the number 
# For the multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

# fizz_buzz  



