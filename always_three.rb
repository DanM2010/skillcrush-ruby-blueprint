print "Give me a number:"
original_number = gets.chomp.to_i
final_number = ((((original_number + 5) * 2) - 4) / 2) - original_number
puts "Your final number is: #{final_number}"
