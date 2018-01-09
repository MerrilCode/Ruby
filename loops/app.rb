
#infinite loop
# loop do 
# 	puts "Hello"
# end

# loop with break

# i = 0
# loop do
# 	puts "This will run until a condition is met"
# 	i += 1
# 	if i > 5
# 		break
# 	end
# end

# while loop

# i = 0

# while i <10 do
# 	puts "while loop: #{i}"
# 	i+= 1
# end

# do while loop

# i = 11

# begin
# 	puts "do while :#{i}"
# 	i += 1
# end while i <10

# Until (inverse of the while loop)
# i = 0

# until i > 10 do
# 	puts "Until: #{i}"
# 	i += 1
# end

# Until do 

# i = 0

# begin

# 	puts "Do until : #{i}"
# 	i += 1
# end until i >10 

# for loop
# NOTE: only works for sequential numbers, lower case or upper case letters
# for i in 0...5
# 	puts "For loops are great: #{i}"
# end

# 5.times do
# 	puts "Something"
# end

# EACH loop

# (0..5).each do |i|
# 	puts "Value of local variable is: #{i}"
# end

# football_teams =  ["Arsenal","Nottingham Forest","Huddersfield Town"]

# football_teams.each do |team|
# 	puts team
# end


# EACH loop with an index

# football_teams.each_with_index do|team,i|
# 	puts "#{i}: #{team}"
# end

# some_fruit = ["apple","pear","banana"]
# new_fruit_array = some_fruit.map do | fruit|
# 	fruit.reverse
# end

# print new_fruit_array #prints in one line
# puts new_fruit_array #prints one by one

#MAP with BANG
# map! would be faster than fruit.reverse!

# some_fruit = ["Apple","Lemon","banana"]

# some_fruit.map! do |fruit|
# 	fruit.reverse
# end

# print some_fruit

# some_numbers = [1,2,3,4,552,25,4]

# sum = some_numbers.reduce 0 do |total, number|
# 	total + number
# end

# puts "sum: #{sum}"

# Reduce shortend
# quick_sum = some_numbers.reduce (:+) # (100, :+) adds to hundred

# puts "quicker sum: #{quick_sum}"













