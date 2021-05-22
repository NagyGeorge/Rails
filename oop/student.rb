require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "Name: #{@first_name} #{@last_name}, Username: #{@username}
      Email address: #{@email}"
  end
end

george = Student.new("George", "Nagy", "gnagy@hotmail.com", "GJN1", "gn1234")

john = Student.new("John", "Doe", "jdoe@hotmail.com", "JD1", "jd1234")

hashed_password = george.create_hash_digest(george.password)

puts hashed_password
