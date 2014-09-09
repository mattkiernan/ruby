class Die

	def initialize
		roll 5
	end

	def roll i 
		if i == nil
			@numberShowing = 1 + rand(6)
		else 
			@numberShowing = i
		end
	end

	def showing
		@numberShowing
	end
end

puts Die.new.showing