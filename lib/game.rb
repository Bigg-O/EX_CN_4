require_relative 'board.rb'
require_relative '../apps/models/user'
require_relative '../config/environment'

USER_PIECE = 'O'
FILLIN_PIECE = 'x'
TIME_LIMIT = 31

def newGame(user)
    level = 1
    playGame(user, level)
end

# catch error for new user
def continueGame(user)
    level = user.highest_level
    playGame(user, level)
end

def playGame(user, level)
    win = false
    gameOver = false
    timeOver = false
    board = Board.new
    starting_time = Time.now
    
    puts
    puts " x-----------------------------------------x"
    puts
    puts "              x-------------x"
    puts "                L E V E L #{level}"
    puts "              x-------------x"
    puts
    
    level.times {
        board.dropPiece(rand(1..10), FILLIN_PIECE) }
    board.showBoard

    while !(win or gameOver or timeOver)
        if timeOver
            break
        end

        remaining_time = TIME_LIMIT - (Time.now - starting_time).to_i
        puts "            Remaining Time: #{remaining_time}s"
        puts "                 Play key:"
        puts
        print "                     "

        userInput = gets.chomp.to_i
        board.dropPiece(userInput, USER_PIECE)

        board.showBoard
        
        level.times {
            board.dropPiece(rand(1..10), FILLIN_PIECE) }
        
        win = board.won?
        gameOver = board.gameOver?
        timeOver = TIME_LIMIT < (Time.now - starting_time)
    end
    
    # POST GAME

    if win
        printWin
        
        completion_time = Time.now - starting_time
        Game.create(completion_time: completion_time, level_id: level, user_id: user.id)
    elsif gameOver
        printLost
        puts                                                                                      
        puts "            BOARD IS FILLED UP!"
        
        Game.create(completion_time: completion_time, level_id: level, user_id: user.id)
    elsif timeOver
        printLost
        puts
        puts "                TIME IS UP!"
        
        Game.create(completion_time: completion_time, level_id: level, user_id: user.id)    
    end
    
end

def stopGame?
    while true
        puts
        puts  "      Would you like to continue? (y,n)"
        print "                    - "
        userInput = gets.chomp

        if userInput == 'y'
            return false
        elsif userInput == 'n'
            return true
        else
            puts
            puts "          Invalid entry, try again"
        end
    end
end

def printWin
    puts '    ____    __    ____  __  .__   __.  __ '
    puts '    \   \  /  \  /   / |  | |  \ |  | |  |'
    puts '     \   \/    \/   /  |  | |   \|  | |  |'
    puts '      \            /   |  | |  . `  | |  |'
    puts '       \    /\    /    |  | |  |\   | |__|'
    puts '        \__/  \__/     |__| |__| \__| (__)'
    puts
    puts " x-----------------------------------------x"
end

def printLost
    puts ' __        ______        _______.___________.'
    puts '|  |      /  __  \\      /       |           |'
    puts '|  |     |  |  |  |    |   (----`---|  |----`'
    puts '|  |     |  |  |  |     \\   \\       |  |'
    puts '|  `----.|  `--\'  | .----)   |      |  |'
    puts '|_______| \\______/  |_______/       |__|'
    puts
    puts " x-----------------------------------------x"
end