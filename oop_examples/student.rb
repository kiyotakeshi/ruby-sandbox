require_relative '../bcrypt_sample'

class Student
  include UserBcrypt

  attr_accessor :first_name, :last_name, :email, :password
  attr_reader :username

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  # redundant code
  # def first_name=(name)
  #   @first_name = name
  # end
  #
  # def first_name
  #   @first_name
  # end

  def to_s
    "first name: #{@first_name}, last name: #{@last_name},
      username: #{@username}, email: #{@email}, password: #{@password}"
  end

end

mike = Student.new("mike", "popcorn", "mikepopcorn", "mike@example.com", "passw0rd")
# mike.password = "updated_password"

hashed_password = mike.create_hash_digest(mike.password)
p hashed_password