unsorted = ['cat', 'apple', 'day', 'ball', 'elephant', 'goat', 'fish']

new_unsorted = []

sorted = []

while unsorted.length > 0

sample = unsorted.pop
	
	unsorted.each do |i|
		if sample < i 
			new_unsorted.push i
		else
			new_unsorted.push sample
			sample = i
		end
	end

sorted.push sample

unsorted = new_unsorted
end

puts sorted[2]

