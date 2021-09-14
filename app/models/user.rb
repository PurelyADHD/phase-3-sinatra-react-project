class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

end

    def user_info(full_name, user_password, username)
        User.create(
            full_name: full_name,
            user_password: password,
            username: username
        )

    puts "Enter First Name: "
    first_name = gets
    puts "Enter Last Name: "
    last_name = gets

    def full_name(first_name, last_name)
        first_name + " " + last_name
    end

    puts full_name("first","last")

end