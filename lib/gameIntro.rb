require_relative '../config/environment'
require 'sinatra/activerecord/rake'

def gameIntro
    printIntro

    puts " Do you have an account? (y,n)"
    print ' - '

    input = gets.chomp
    while input != "y" && input != "n"
        puts
        puts " Invalid entry, try again"
        puts
        puts " Do you have an account? (y,n)"
        print ' - '

        input = gets.chomp
    end

        if input == "y"
           return true
        elsif input == "n"
           return false
       end

end

    def loginMenu
        puts
       print "Enter Username: "
       username = gets.chomp
       user = User.find_by(name: username)
       while !user
           puts "incorrect, username, please re-enter username"
           username = gets.chomp
           user = User.find_by(name: username)
       end
       puts
       print "Enter Password: "
       password = gets.chomp
       user = User.find_by(name: username)
       while user.password != password
           puts "incorrect, please re-enter password"
           password = gets.chomp
       end

        puts
        puts " x-----------------------------------------x"
        puts "            Succefully logged in            "
        puts " x-----------------------------------------x"
        puts

        user
    end

    def createUser

        puts
        puts " Enter your new account information"
        puts
        print " Username: "
        new_username = gets.chomp

        puts
        print " Password: "
        new_password = gets.chomp
        puts
        print " Re-enter password: "
        confirm_new_password = gets.chomp

        while confirm_new_password != new_password do
            puts
            puts " Passwords don't match"
            puts
            print " Re-enter password: "
            confirm_new_password = gets.chomp
        end

        puts
        puts " x-----------------------------------------x"
        puts "      Succefully created new account        "
        puts " x-----------------------------------------x"
        puts

        User.create(name: new_username, password: new_password)

    end

def printIntro
    puts
    puts '     ______     __                          '
    puts '    / ____/  __/ /_________  ____ ___  ___  '
    puts '   / __/ | |/_/ __/ ___/ _ \/ __ `__ \/ _ \ '
    puts '  / /____>  </ /_/ /  /  __/ / / / / /  __/ '
    puts ' /_____/_/|_|\__/_/   \___/_/ /_/ /_/\___/  '
    puts
    puts '    ______                            __    '
    puts '   / ____/___  ____  ____  ___  _____/ /_   '
    puts '  / /   / __ \/ __ \/ __ \/ _ \/ ___/ __/   '
    puts ' / /___/ /_/ / / / / / / /  __/ /__/ /_     '
    puts ' \____/\____/_/ /_/_/ /_/\___/\___/\__/     '
    puts                 
    puts ' 4                  444444444              4'
    puts ' 4                 4::::::::4              4'
    puts ' 4                4:::::::::4              4'
    puts ' 4               4::::44::::4              4'
    puts ' 4              4::::4 4::::4              4'
    puts ' 4             4::::4  4::::4              4'
    puts ' 4            4::::4   4::::4              4'
    puts ' 4           4::::444444::::444            4'
    puts ' 4           4::::::::::::::::4            4'
    puts ' 4           4444444444:::::444            4'
    puts ' 4                     4::::4              4'
    puts ' 4                     4::::4              4'
    puts ' 4                     4::::4              4'
    puts ' 4                   44::::::44            4'
    puts ' 4                   4::::::::4            4'
    puts ' 4                   4444444444            4'
    puts
    puts " x----- Welcome to Extreme Connect 4 ------x"
    puts
    puts " If you thought Connect 4 was not intense or"
    puts " extreme enough for you. You've found the"
    puts " perfect game for yourself."
    puts
    puts " Enjoy the suffering and struggle."
    puts
    puts " x-----------------------------------------x"
    puts
end