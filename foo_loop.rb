for n in 1..100
	if n % 3 == 0 && n % 5 == 0
		puts "foo bar"
	elsif n % 3 == 0
		puts "foo"
	elsif n % 5 == 0
		puts "bar"
	else 
		puts n
	end
end


