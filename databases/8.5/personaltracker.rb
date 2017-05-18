# Personal Tracker
# pseudo code:
# offer the output or input of the info
# Ask for all the input info (work out, sleep, mood)
# store it in appropriate tables
# create output for desire amount of days
require 'sqlite3'
require_relative 'data.db'


def choice1
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

def choice2
    p <<-PER1
    what period do you want to see?
        1 for yesterday
        2 for last week
        3 for last month
        4 for hole year
        5 for all records
    PER1
    period = gets.chomp
    until period === 1..5
        p "1 to 5 only!"
        period = gets.chomp
    end
    if period == 1

    elsif period == 2

    elsif period == 3

    elsif period == 4

    elsif period == 5

    end     
        
end

# random food?????????????????
def choice3
    puts "you random healthy food today is #{}"
    puts "press 
    1 to get another one,
    2 to add food item to your database or 
    3 to quit"
    choise3var = gets.chomp
    until choise3var === 1..3
        puts "1 to 3 only please"
        choise3var = gets.chomp        
    end

    if choise3var == 1

    elsif choise3var == 2

    elsif choise3var == 3

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
    until choice == 1 || choice == 2 || choice == 3
        p "be attantive! 1, 2 or 3!"
        choice = gets.chomp
    end

if choice = 1
    choice1 

elsif  choice = 2
    choise2

elsif  choice = 3
    choise3
end
    
#need to add quit 