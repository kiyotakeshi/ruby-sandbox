require_relative 'bcrypt_sample'

# $LOAD_PATH << "."
# require 'bcrypt_sample'

users = [
  { username: "mike", password: "password1" },
  { username: "popcorn", password: "password2" },
  { username: "kendrick", password: "password3" },
  { username: "west", password: "password4" },
]

hashed_users = UserBcrypt.create_secure_users(users)
puts hashed_users