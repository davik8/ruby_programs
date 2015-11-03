def convert_pounds_to_kilograms(number)
	weight_kilograms = number * 0.453592
	return weight_kilograms
end

weight_pounds = gets.chomp.to_i 

weight_kilograms = convert_pounds_to_kilograms(weight_pounds)

puts "The weight is " + weight_kilograms.to_s + " kg."