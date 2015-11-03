comp_choices = ["rock", "paper", "scissors"]

puts "Welcome to my Rock, Paper, Scissors game!"

puts "Please enter rock, paper, or scissors:"

answer = gets.chomp.downcase

comp_answer = comp_choices.sample

puts comp_answer

user_score = 0
comp_score = 0

until answer == "quit"
if answer == comp_answer
	puts "Tie"
elsif answer == "rock" && comp_answer == "scissors"
	puts "You win!"
	user_score += 1
elsif answer == "rock" && comp_answer == "paper"
	puts "You lose!"
	comp_score +=1
elsif answer == "paper" && comp_answer == "rock"
	puts "You Win!"
	user_score += 1
elsif answer == "paper" && comp_answer == "scissors"
	puts "You lose!"
	comp_score += 1
elsif answer == "scissors" && comp_answer == "paper"
	puts "You win!"
	user_score += 1
elsif answer == "scissors" && comp_answer == "rock"
	puts "You lose!"
	comp_score += 1
end

puts "Your score i #{user_score}, Computer's score is #{comp_score}"

if user_score == 5
	puts "You won the game!"
	break
elsif comp_score == 5 
	puts "Sorry you lost the game."
	break
end

puts "Please enter rock, paper, or scissors.  Or enter 'quit' to end game:"

answer = gets.chomp.downcase

if answer == "quit"
	break
end

comp_answer = comp_choices.sample

puts comp_answer

end

