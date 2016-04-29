puts "Hello"
puts "what is your name?"
name = gets.chomp
puts "\nHi " + name
puts "\nToday we are going to learn your numerological number.\nThis is based on your birth path number.\nIn order to get this we will need you to input your birthdate in\nMMDDYYYY form."
puts "\nWhat is your birth date?"
birth_date = gets.chomp

if birth_date.length != 8 then puts "Incorrect birthdate format.\nWhat is your birth_date?"
  birth_date = gets.chomp
end

def birth_number(birth_date)
birth_number = birth_date[0].to_i + birth_date[1].to_i + birth_date[2].to_i + birth_date[3].to_i + birth_date[4].to_i + birth_date[5].to_i + birth_date[6].to_i + birth_date[7].to_i

  birth_number = birth_number.to_s
  birth_number = birth_number[0].to_i + birth_number[1].to_i

  if birth_number > 9 then
    birth_number.to_s
    birth_number = birth_number[0].to_i + birth_number[1].to_i
  end
  
  birth_number.inspect
# return birth_number
end

birth_date_number = birth_number(birth_date)
puts "Test: #{birth_date_number}"

def my_message(birth_date_number)

case birth_date_number
when 1
   "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2
   "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
   "Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
   "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
   "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
   "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
   "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
   "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
   "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end
end

my_result = my_message(birth_date_number)

puts "your Numerological number is #{birth_date_number.to_s}\n#{my_result}"