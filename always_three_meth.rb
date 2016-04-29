def always_three(input)
	puts "Your final number is: #{((((input + 5) * 2) - 4) / 2) - input}"
end

print "Give me a number: "
always_three(gets.chomp.to_i)
