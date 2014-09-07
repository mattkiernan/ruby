say = gets.chomp
while say != 'BYE'
	if say == say.upcase
		puts 'No, not since ' + (1930 + (rand(20))).to_s
		say = gets.chomp
	else
		puts 'Huh? speak up!'
		say = gets.chomp
	end
end
puts 'Okay bye!'
