def log blockDescription, &block
	puts 'Beginning ' +blockDescription+ '...'
	value = block.call
	puts blockDescription +' finished, returning: ' + value.to_s
end

log 'outer block' do
	log 'some little block' do
		5
	end
end

log 'yet another block' do
	'I like Thai food!'
end
