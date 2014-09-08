now = Time.new


puts 'whats your birth month?'
month = gets.chomp
puts 'whats your birth date?'
date = gets.chomp
puts 'whats your birth year?'
year = gets.chomp
puts 'whats your birth hour?'
hour = gets.chomp
puts 'whats your birth minute?'
minute = gets.chomp

bday = Time.mktime(year, month, date, hour, minute)

 seconds = now - bday

 years = seconds / 60 / 60 / 24 / 365

age = years.to_i

 puts 'You are ' + age.to_s + ' years old! Time for some spankings!'

def spanks age
	puts 'SPANK!' * age
end

spanks age