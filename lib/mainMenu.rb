def mainMenu
    showMenu

    input = ''
    input = gets.chomp
    while input != '1' && input != '2' && input != '3' do
        puts
        puts "        Invalid entry, try again"
        puts
        showMenu
        input = gets.chomp
    end

    input.to_i

end

def showMenu
    puts '           ____ ___  ____ _ _ ___'
    puts '          / __ `__ \/ __ `/ / __ \ '
    puts '         / / / / / / /_/ / / / / /'
    puts '        /_/ /_/ /_/\__,_/_/_/ /_/'
    puts                     
    puts
    puts '         (1)      NEW GAME'
    puts
    puts '         (2)   CONTINUE GAME '
    puts
    puts '         (3)       STATS'
    puts
    print '         ENTER:      '
end