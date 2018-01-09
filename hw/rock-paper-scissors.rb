
playerPoint = 0
computerPoint = 0

puts "Please type [rock/paper/scissors]"

for i in 1..5 
	if computerPoint == 3 || playerPoint == 3
		if computerPoint > playerPoint
			puts "computer beats you!!!"

		elsif playerPoint > computerPoint
			puts "You beat computer!!!"
		
		end
		break

	else
		player1 = gets.chomp
		choices = ["rock","paper","scissors"]
		rand_number = rand(3)
		computer_choice = choices[rand_number]
		puts "computer chose #{computer_choice}"
		if player1 == computer_choice
			puts " You and computer chose #{computer_choice}"

		elsif player1 == "rock" && computer_choice == "paper"
			puts "You lose this round"
			computerPoint += 1
		elsif player1 == "paper" && computer_choice == "scissors"
			puts "You lose this round"
			computerPoint += 1
		elsif player1 == "scissors" && computer_choice == "rock"
			puts "You lose this round"
			computerPoint += 1
		elsif player1 == "rock" && computer_choice == "scissors"
			puts "You win this round"
			playerPoint += 1
		elsif player1 == "paper" && computer_choice == "rock"
			puts "You win this round"
			playerPoint += 1
		elsif player1 == "scissors" && computer_choice == "paper"
			puts "You win this round"
			playerPoint += 1
		else
			puts "Please enter a choice"

	end
			
	end
	puts "Your score is #{playerPoint}"
	puts "Computer score is #{computerPoint}"
	
end

if computerPoint > playerPoint
	puts "computer beats you!!!"

elsif playerPoint > computerPoint
	puts "You beat computer!!!"
else
	puts "Game tied after 5 rounds"
		
end
	

