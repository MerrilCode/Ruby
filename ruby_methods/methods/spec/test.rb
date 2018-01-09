# array = ['a','b','c','d']
# h = {}
# array.select.each_with_index { |v,i| h[v] = i.even? }
def fizz_buzz(number)
	if number%3==0 && number%5 == 0 then "FizzBuzz" elsif number%3 ==0 then "Fizz" elsif number%5 == 0 then "Buzz"  else number end
		
end 

puts fizz_buzz(13)