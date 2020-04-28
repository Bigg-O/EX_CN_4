# needs to catch invalid input
def statsMenu(user)
    showStatsMenu

    input = gets.chomp.to_i

    if input == 1
        show_personal_stat(user)
    elsif input == 2
        show_global_stat(user)
    end
end

# needs to catch invalid input
def show_personal_stat(user)
    showPersonalStatsMenu

    input = gets.chomp.to_i

        if input == 1
            user.fastest_completions               
        end

        if input == 2
            user.success_rate
        end

end

# needs to catch invalid input
def show_global_stat(user)
    showGlobalStatsMenu

    input = gets.chomp.to_i

        if input == 1
            Game.global_fastest
        end

        if input == 2
            Game.global_success_rate
        end

end

def showStatsMenu
    puts '                 __        __'
    puts '           _____/ /_____ _/ /______'
    puts '          / ___/ __/ __ `/ __/ ___/'
    puts '         (__  ) /_/ /_/ / /_(__  )'
    puts '        /____/\__/\__,_/\__/____/'                  
    puts                     
    puts
    puts '         (1)       PERSONAL'
    puts
    puts '         (2)        GLOBAL'
    puts
    print '         ENTER:      '
end

def showPersonalStatsMenu
    puts '                                            __'
    puts '    ____  ___  ______________  ____  ____ _/ /'
    puts '   / __ \/ _ \/ ___/ ___/ __ \/ __ \/ __ `/ / '
    puts '  / /_/ /  __/ /  (__  ) /_/ / / / / /_/ / /  '
    puts ' / .___/\___/_/  /____/\____/_/ /_/\__,_/_/   '
    puts '/_/                                           '
    puts
    puts
    puts '      (1)    FASTEST COMPLETION'
    puts
    puts '      (2)       SUCCESS RATE'
    puts
    print '         ENTER:      '
end

def showGlobalStatsMenu
    puts '                 __      __          __'
    puts '          ____ _/ /___  / /_  ____ _/ /'
    puts '         / __ `/ / __ \/ __ \/ __ `/ / '
    puts '        / /_/ / / /_/ / /_/ / /_/ / /  '
    puts '        \__, /_/\____/_.___/\__,_/_/   '
    puts '       /____/                          '
    puts
    puts
    puts '      (1)    FASTEST COMPLETION'
    puts
    puts '      (2)       SUCCESS RATE'
    puts
    print '         ENTER:      '
end