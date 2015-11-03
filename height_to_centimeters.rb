my_name = gets.chomp

height_inches = 60

weight_pounds = 120

height_centimeters = height_inches * 2.54

weight_kilograms = weight_pounds * 0.453592

puts my_name + " is " + height_centimeters.to_s + " cm and " + weight_kilograms.to_s + " kg."