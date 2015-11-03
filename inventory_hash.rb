nbajersey_hash = {cavaliers: "10", 
				  spurs: "20", 
				  heat: "12", 
				  thunder: "8", 
				  warriors: "22", 
				  bulls: "35", 
				  clippers: "7", 
				  rockets: "17", 
				  hawks: "12",
				  lakers: "18",}

nbajersey_hash.each do |team, number|
	puts "I have a #{number} #{team} jerseys."
end

if nbajersey_hash.has_key?(:knicks)
	puts nbajersey_hash[:knicks]
else
	nbajersey_hash[:knicks] = "1"
	puts nbajersey_hash[:knicks]
end

if nbajersey_hash.has_key?(:spurs)
   nbajersey_hash.delete(:spurs)
end

puts nbajersey_hash
