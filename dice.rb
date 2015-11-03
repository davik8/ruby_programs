die = [1, 2, 3, 4, 5, 6]

user_score = 0
comp_score = 0

while true
	computer_roll = die.sample 
	puts "Computer rolled #{computer_roll}"
	user_roll = die.sample
	puts "You rolled #{user_roll}"
	
	if user_roll == computer_roll
		puts "Tie"
	elsif user_roll > computer_roll
		puts "You win"
		user_score += 1
	else 
		puts "You lose"
		comp_score += 1
	end

	puts "Your score is #{user_score}, Computer's score is #{comp_score}"

	if user_score == 5
		puts "You won the game!"
		break
	elsif comp_score == 5
		puts "You lost the game."
		break
	end

	puts "Would you like to play again?"
	answer = gets.chomp.downcase

	if answer == "no"
		break
	end
end
