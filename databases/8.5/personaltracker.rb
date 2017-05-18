# Personal Tracker
# pseudo code:
# offer the output or input of the info
# Ask for all the input info (work out, food, sleep, mood)
# store it in appropriate tables
# create output for desire amount of days

require_relative 'data.db'


def choise1
     p "lets start, did you work out today(y/n)?"
    workout = gets.chomp
    until workout == "y" || workout == "n"
        p "y/n only"
    end
    if workout == "y"
        workout = true
    else workout == "n"
        workout = false
    end

end


#USER INTERFACE ....................................

p <<-UI
Hi, today is 'add date', what would you like to do?
Press:   1 to enter todays report, 
         2 to check you history,
         3 to get random food you should eat today
UI
choice = gets.chomp
    until choise == 1 || choise == 2 || choise == 3
        p "be attantive! 1, 2 or 3!"
        choise = gets.chomp
    end

if choise = 1
    choise1 

elsif  choise = 2

elsif  choise = 3

end
    
    