first_name = "mike"
last_name = "popcorn"

# p 'my first name is #{first_name} and my last name is #{last_name}'
p "my first name is #{first_name} and my last name is #{last_name}"

full_name = "#{first_name} #{last_name}"
p full_name.length
p full_name.reverse
p full_name.capitalize
p full_name.empty?

p "".empty?
p "".nil? # false
p nil.nil? # true

sentence = "welcome to the jungle"
replaced_sentence = sentence.sub("the jungle", "utopia")
p replaced_sentence

# escape
p 'mike, \'how are you doing?\''

p "what is your fist name?"
input_first_name = gets.chomp
p "your first name is #{input_first_name}"

p "enter a number to multiply by 2"
input = gets.chomp
p input.to_i * 2