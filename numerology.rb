def calc_birth_number(dob)
	birth_number = 0

	(0 .. 7).each do |i|
		birth_number += dob[i].to_i
	end

	while birth_number > 9
		birth_number = reduce_num(birth_number)
	end

	return birth_number
end

def reduce_num(birth_number)
	birth_number_str = birth_number.to_s
	birth_number = 0

	(0 .. birth_number_str.length.to_i - 1).each do |i|
		birth_number += birth_number_str[i].to_i
	end

	return birth_number
end

def find_birth_message(birth_number)
	birth_message = case birth_number
		when 1 then "One is the leader.\nThe number one indicates the ability to stand alone, and is a strong vibration.\n\nRuled by the Sun."
		when 2 then "This is the mediator and peace-lover.\nThe number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration.\n\nRuled by the Moon."
		when 3 then "Number Three is a sociable, friendly, and outgoing vibration.\nKind, positive, and optimistic, Three's enjoy life and have a good sense of humor.\n\nRuled by Jupiter."
		when 4 then "This is the worker.\nPractical, with a love of detail, Fours are trustworthy, hard-working, and helpful.\n\nRuled by Uranus."
		when 5 then "This is the freedom lover.\nThe number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations.\n\nRuled by Mercury."
		when 6 then "This is the peace lover.\nThe number six is a loving, stable, and harmonious vibration.\n\nRuled by Venus."
		when 7 then "This is the deep thinker.\nThe number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet.\n\nRuled by Neptune."
		when 8 then "This is the manager.\nNumber Eight is a strong, successful, and material vibration.\n\nRuled by Saturn."
		when 9 then "This is the teacher.\nNumber Nine is a tolerant, somewhat impractical, and sympathetic vibration.\n\nRuled by Mars."
		else "Something strange has happened"
	end
	
	return birth_message
end

print "Please enter your date of birth (DDMMYYYY): "
birth_number = calc_birth_number(gets.chomp)

puts "\nYour birth path number is: #{birth_number}.\n\nYour birth message is:\n#{find_birth_message(birth_number)}\n"