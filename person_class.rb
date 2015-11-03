class Person
	attr_accessor :first_name, :last_name, :gender, :age

	def initialize(first_name, last_name, gender, age)
		@first_name = first_name
		@last_name = last_name
		@gender = gender
		@age = age
	end

	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}"
	end
end

class Student < Person
	
	def learning
		puts "#{@first_name} is learning!"
	end
end 

class Teacher < Student
	def teaching
		puts "#{@first_name} is a Teacher"
	end
end

p = Person.new("Tracey", "King", "male", 22)
p.introduction

s = Student.new("Tracey", "King", "male", 22)
puts s.introduction
puts s.learning

t = Teacher.new("Tracey", "King", "male", 22)
t.teaching

