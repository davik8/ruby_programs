class Animal
	attr_accessor :name, :color, :gender, :feeding_type

	def initialize(name, color, gender, feeding_type)
		@name=name
		@color=color
		@gender=gender
		@feeding_type=feeding_type

	end

	def introduction
		puts "#{@name} is a #{@color} #{@gender} #{@feeding_type}"

	end
end

class Reptile < Animal
	def cold_blooded
		puts "#{@name} is cold-blooded"
	end
end

class Snake < Reptile
	def legless
		puts "#{@name} has no legs"
	end
end

a = Animal.new("Slithers", "green", "male", "carnivore")
a.introduction

r = Reptile.new("Slithers", "green", "male", "carnivore")
puts r.introduction
puts r.cold_blooded

s = Snake.new("Slithers", "green", "male", "carnivore")
s.legless



