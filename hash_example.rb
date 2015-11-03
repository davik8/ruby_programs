my_hash = {}
my_hash["name"] = "David"
my_hash["age"] = 35
my_hash["eye_color"] = "brown"

puts "What option would you like to add?"
option = "gender"

puts "What is your answer for the option?"
answer = "male"

my_hash[option] = answer

puts my_hash

my_hash = {"name" => "David", "age" => 35, "eye_color" => "brown"}

my_hash_2 = {:name => "David", :age => 35, :eye_color => "blue"}

puts my_hash_2[:age]

my_hash_3 = {name: "Tracey", age: 22, eye_color: "blue"}

puts my_hash_3[:age]



my_hash_2.each do |key, value|

end


car_hash = {ford: "Mustang", chevy: "Corvette", nissan: "GTF"}

car_hash.each do |make, model|
	puts "I own a #{make.capitalize} #{model}"
end

ford_vehicle = car_hash[:ford]
puts ford_vehicle


if car_hash.has_key?(:hyundai)
	puts car_hash[:hyundai]
else
	car_hash[:hyundai] = "Genesis"
	puts car_hash[:hyundai]
end

car_hash.map { |k| puts "#{k[1]}"  }


#1.  display hash
#2.  look through
#3.  delete items...don't allow to delete more than you have