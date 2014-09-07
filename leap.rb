puts 'provide a start year >>'
start = gets.chomp
puts 'provide an end year >>'
finish = gets.chomp

while start.to_i <= finish.to_i
	if start.to_f % 4 == 0 and (start.to_f % 100 != 0 or start.to_f % 400 != 0)
		puts start.to_i
	end
start = start.to_i + 1
end