my_array = []

my_array[0] = "Hello"

my_array[1] = 14

my_array[2] = [1, 2, 3]

my_array.push("David")

my_array.push(23)

my_array.push([4, 5, 6])

my_array << "Class"

my_array << 56

my_array << [7, 8, 9]

scores = [100, 85, 30, 79]

counter = 0

sum = 0

while counter < scores.length
	sum += scores[counter]
	counter += 1
end

puts "The total is #{sum}"

puts scores.inject(:+)

sum = 0 

scores.each do |score|
	sum += score
end

puts "The sum is #{sum}"