puts "Please tell me the weather from the following options:"
puts "Sunny (1), cloudy (2), foggy (3), rainy (4), snowy (5)"
weather = gets.chomp.to_s.downcase
case weather
when '1', 'sunny'
	puts "Time to fire up the barbecue"
when '2', 'cloudy'
	puts "The sun will be out soon"
when '3', 'foggy'
	puts "Look out ahead!"
when '4', 'rainy'
	puts "Umbrellas, UP!"
when '5', 'snowy'
	puts "Let's go sledging"
else
	puts "I don't know about that weather"
end