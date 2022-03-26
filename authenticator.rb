users = [
  # hash
  { username: "mike", password: "password1" },
  { username: "popcorn", password: "password2" },
  { username: "kendrick", password: "password3" },
  { username: "west", password: "password4" },
]

puts "let's enter your username and password"

attempts = 0
while attempts < 3
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp

  users.each { |user|
    if user[:username] == username && user[:password] == password
      puts user
      break
    else
      puts "credentials were not correct"
    end
  }

  puts "press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  # if input == "n"
  #   break
  # end
  break if input == "n"

  attempts += 1
end
