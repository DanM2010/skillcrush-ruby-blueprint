def fizzbuzz(num)
	if (num % 3 == 0) && (num % 5 == 0)
		result = "FizzBuzz"
	elsif (num % 3 == 0)
		result = "Fizz"
	elsif (num % 5 == 0)
		result = "Buzz"
	else
		result = num.to_s
	end
	
	return result
end

for num in (1 .. 100) do
	puts "#{fizzbuzz(num)}"
end