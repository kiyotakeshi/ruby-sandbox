# $ gem install bcrypt
# @see https://github.com/bcrypt-ruby/bcrypt-ruby#how-to-use-bcrypt-ruby-in-general
require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
#=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

# puts my_password
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

# my_password = BCrypt::Password.new("$2a$12$hot3659Dv.e/ECdrdb84bOcu36wVdUywwqTiuEPD.Q9WAIFxI8lDK")
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

module UserBcrypt

  def UserBcrypt.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def UserBcrypt.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def UserBcrypt.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def UserBcrypt.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "credentials were not correct"
  end
end
