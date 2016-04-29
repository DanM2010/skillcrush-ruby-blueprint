if (1 + 1 == 2)
	puts "1 and 1 does indeed equal 2"
end

#my_name = 'Skillcrush'
my_name = 'Dan'
if (my_name == 'Skillcrush')
	puts "Hellooooo, Skillcrush!"
else
	puts "Oops, I thought your name was Skillcrush. Sorry about that, #{my_name}!"
end

#fav_colour = 'red'
#fav_colour = 'magenta'

print "Please tell me your favourite colour: "
fav_colour = gets.chomp.to_s.downcase
if (fav_colour == 'red')
	puts "Red like fire!"
elsif (fav_colour == 'orange')
	puts "Orange like, well... an orange."
elsif (fav_colour == 'yellow')
	puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_colour == 'green')
	puts "Have you been to the Emerald City in Oz?"
elsif (fav_colour == 'blue')
	puts "Blue like the sky!"
elsif (fav_colour == 'purple')
	puts "Purple plums are the tastiest."
else
	puts "Hmm, well I don't know what that colour is!"
end
