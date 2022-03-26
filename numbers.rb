p 10 / 4 # 2
p 10.0 / 4
p 10 / 4.0
p 10 / 4.to_f

puts "-" * 20
20.times { print "-" }
puts

puts "enter first number"
num1 = gets.chomp.to_i

puts "enter second number"
num2 = gets.chomp.to_i

p "The first number multiplied by the second number is #{num1 * num2}"