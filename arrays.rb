a = [1, 2, 3, 4, 5]
# print a
# puts a
# print a.last
p a.empty? # false
p a.include?(4)

joined_a = a.join(", ")
p joined_a
p joined_a.split(", ")

x = 1..30
# p x.class # Range
p x.to_a.shuffle

p ("a".."z").to_a.shuffle

y = %w(my name is mike popcorn and i like popcorn)
# y.each do |food|
#   print food + " "
# end
y.each { |food| print food.capitalize + " " }
puts

p x.select { |number| number.odd? }
