def profile blockDescription, &block
	startTime = Time.now

	block.call

	duration = Time.now - startTime

	puts blockDescription+':  '+duration.to_s+' seconds'
end


profile 'count' do
	number = 1
	250.times do
		number = number + 1
		puts number
	end
end

