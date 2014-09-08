def engNum number
	if number < 0
		return 'Please, real numbers'
	end
	if number == 0
		return 'zero'
	end

	numString = ''

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

left = number

write = left / 1000

left = left - write * 1000

if write > 0
	thousands = engNum write
	numString = numString + thousands + ' thousand'

	if left > 0 
		numString = numString + ' '
	end
end

write = left / 100

left = left - write * 100

if write > 0
	hundreds = engNum write
	numString = numString + hundreds + ' hundred'

	if left > 0 
		numString = numString + ' and '
	end
end

write = left/10
left = left - write*10

if write > 0
	if left > 0
		numString = numString + teenagers[left-1]
		left = 0
	else
		numString = numString + tensPlace[write-1]
	end

	if left > 0
		numString = numString + '-'
	end
end

write = left
left = 0

if write > 0
	numString = numString + onesPlace[write-1]
end

numString
end

puts engNum(0)
puts engNum(7)
puts engNum(29)
puts engNum(100)
puts engNum(345)
puts engNum(1984)





