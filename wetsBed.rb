def ask question
	goodAnswer = false
	while (not goodAnswer)
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' or reply == 'no')
			goodAnswer = true
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
		else
			puts 'Please answer "yes" or "no".'
		end
	end

	answer

end

puts 'Hello and thanks'

puts

ask 'Do you like eating Tacos?'
ask 'Do you like eating Burritos?'
wetsBed = ask 'Do you wet the bed?'
ask 'Do you like eating spaghetti?'
ask 'Do you like eating bread?'
ask 'Do you like eating mustard?'

puts
puts 'DEBRIEFING:'
puts 'Thank you.'
puts
puts wetsBed