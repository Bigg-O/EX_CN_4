require_relative '../lib/gameIntro.rb'
require_relative '../lib/mainMenu.rb'
require_relative '../lib/statsMenu.rb'
require_relative '../lib/game.rb'
require_relative '../config/environment'

NEW_GAME = 1
CONTINUE_GAME = 2
SHOW_STATS = 3

# GAME INTRO
userExists = gameIntro

if userExists
    user = loginMenu
else
    user = createUser
end

loop do

    # MAIN MENU
    userInput = mainMenu

    # GAME PLAY
    if userInput == NEW_GAME
        newGame(user)
    elsif userInput == CONTINUE_GAME
        continueGame(user)
    elsif userInput == SHOW_STATS
        #STATS MENU
        statsMenu(user)
    end


    break if stopGame?

end

puts '             _                  '
puts '            | |                 '
puts '            | |__  _   _  ___   '
puts '            | \'_ \\| | | |/ _ \\  '
puts '            | |_) | |_| |  __/_ '
puts '            |_.__/ \\__, |\\___(_)'
puts '                    __/ |       '
puts '                   |___/        '
puts
puts
puts '                   made by'
puts
puts '              - Vincent Marks'
puts
puts '              - Alec Reid'
puts
puts '              - Wookeun Song'
puts