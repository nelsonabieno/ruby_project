class User
  attr_accessor :name,:email

  def initialize name, email
    @name = name
    @email = email
  end

  def get_name
    @name
  end

  def run
    puts "Hey I'm runing"
  end
end


class Buyer < User
  def run
    puts "Hey I'm not running and I'm in buyer class"    # polymorphism
  end
end

class Admin < User

end

class Seller < User

end

buyer= Buyer.new('Beloveth1' ,'belov1@gmail.com')   # inheritance
buyer.run

admin= Admin.new('Beloveth2','belov2@gmail.com')    # Abstraction, class Admin is only available when it is been called
admin.run

seller= Seller.new('Beloveth3','belov3@gmail.com')
seller.run



user = User.new("Nelson", "nelson@gmail.com")
user1 = User.new("James", "james@gmail.com")
user2 = User.new("John", "james@gmail.com")

puts user.get_name
puts user1.get_name
puts user2.get_name

puts User.ancestors             # displays the class Users ancestors

puts "My name is #{user.name} and my email is #{user.email}"  # attr_acessor in action

user.name = "James"             # attr_acessor used as a setter method
user.email = "james@gmail.com"

puts "My name is #{user.name} and my email is #{user.email}"