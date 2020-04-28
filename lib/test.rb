require_relative 'board'

FILLIN_PIECE = 'x'
USER_PIECE = 'O'

    win = false
    gameOver = false
    timeOver = false
    board = Board.new
    starting_time = Time.now
    level = 1
    TIME_LIMIT = 31
    board = Board.new
    
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