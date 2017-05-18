# Personal Tracker
# pseudo code:
# offer the output or input of the info
# Ask for all the input info (work out, sleep, mood)
# store it in appropriate tables
# create output for desire amount of days
require 'sqlite3'
require_relative 'data.db'


def choise1
     p "lets start, did you work out today(y/n)?"
    workout = gets.chomp
    until workout == "y" || workout == "n"
        p "y/n only"
        workout = gets.chomp
    end

    if workout == "y"
        workout = true
        p "describe your workout!(ex: run, swim, gym)"
        describtion = gets.chomp
        p "how hard did you work out? (from 1(easiest) to 5(hardest)"
        level = gets.to_i
        p "how many hours did you sleep last night?"
        night = gets.chomp.to_i
        p "overall mood today? (1 - bad, 5 - good)"
        mood = gets.to_i

    else workout == "n"
        workout = false
        description = ""
        level = ""
        p "how many hours did you sleep last night?"
        night = gets.chomp.to_i
        p "overall mood today? (1 - bad, 5 - good)"
        mood = gets.to_i
    end

    db = data.db
    db.execute("INSERT INTO workouts 
        (workout, description, level, night, mood)
         VALUES (?, ?, ?, ?, ?)",[workout, description, level, night, mood])

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
    
    