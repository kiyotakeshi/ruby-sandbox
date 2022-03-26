users = [
  # hash
  { username: "mike", password: "password1" },
  { username: "popcorn", password: "password2" },
  { username: "kendrick", password: "password3" },
  { username: "west", password: "password4" },
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "credentials were not correct"
end

puts "let's enter your username and password"

attempts = 1
while attempts < 4
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication

  puts "press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  # if input == "n"
  #   break
  # end
  break if input == "n"

  attempts += 1
end
puts "you have exceeded the number of attempts" if attempts == 4