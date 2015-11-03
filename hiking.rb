

def going_hiking (temp, raining)

	if temp > 120 || temp < -120
		puts "That's not a valid temp."

	elsif temp >= 50 && raining == "no"
		puts "#{temp} Let's go hiking!"

	else
		puts "#{temp} That's way too cold for hiking!"
	end

end

puts "Please enter the temp:"

temp = gets.to_i

puts "Is it raining?  Enter yes or no"

raining = gets.chomp.downcase

puts going_hiking(temp, raining)