title = 'Table of Contents'
chap_num = 1

chapters = [
	['Getting Started', 1],
	['Numbers', 9],
	['Letters', 13],
]

puts title.center(50)

chapters.each do |chap|
	name = chap[0]
	page = chap[1]

	first = 'Chapter ' + chap_num.to_s + ': ' + name
	ending = 'Page ' + page.to_s

	puts first.ljust(30) + ending.rjust(20)

	chap_num = chap_num + 1
end