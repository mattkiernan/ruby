myArray = []
puts 'Enter some words.'
words = 'x'
i = 0

while words != ''
	words = gets.chomp
	myArray[i] = words
	i = i + 1
end

puts myArray.sort