# Personal Tracker
# pseudo code:
# offer the output or input of the info
# Ask for all the input info (work out, sleep, mood)
# store it in appropriate tables
# create output for desire amount of days
require 'sqlite3'
# require_relative 'data.db'


def choice1(db)
    puts"lets start, did you work out today(y/n)?"
    workout = gets.chomp
    until workout == "y" || workout == "n"
       puts "y/n only"
        workout = gets.chomp
    end

    if workout == "y"
        workout = "true"
       puts "describe your workout!(ex: run, swim, gym)"
        description = gets.chomp
       puts "how hard did you work out? (from 1(easiest) to 5(hardest)"
        level = gets.to_i
       puts "how many hours did you sleep last night?"
        night = gets.chomp.to_i
       puts "overall mood today? (1 - bad, 5 - good)"
        mood = gets.to_i

    else workout == "n"
        workout = "false"
        description = "lazy day"
        level = "0"
       puts "how many hours did you sleep last night?"
        night = gets.chomp.to_i
       puts "overall mood today? (1 - bad, 5 - good)"
        mood = gets.to_i
    end

    db.execute("INSERT INTO workouts (workout, description, level, night, mood) VALUES (?, ?, ?, ?, ?)",[workout, description, level, night, mood])
    
    #30.times {db.execute("INSERT INTO workouts (workout, description, level, night, mood) VALUES (?, ?, ?, ?, ?)",[["true","false"][rand(0..1)], ["swim","run","weight lifting","tennis"][rand(0..3)], rand(1..5), rand(5..8), rand(1..5)]) }
    # view = db.execute("SELECT * FROM workouts")
    # view.each do |view| 
    #     puts  "#{view[0]} - #{view[2]} - #{view[3]} - #{view[4]} - #{view[5]}"
    # end
end

def choice2(db)
   puts <<-PER1
    what period do you want to see?
        1 if you want to choose period in days
        2 for last week
        3 for last month
        4 for all records
    PER1
    period = gets.to_i
    until (1..4).include?(period) 
       puts"1 to 4 only!"
        period = gets.to_i
    end
    if period == 1
        view = db.execute("SELECT * FROM workouts")
        puts "how many workouts do you want to see(max=#{view.length})?"
        n=gets.to_i
        p "# - Type - intensity - hours slept - mood level"
        until n < 1
        view[view.length - n] 
        p    "#{view[view.length - n][0]} - #{view[view.length - n][2]} - #{view[view.length - n][3]} - #{view[view.length - n][4]} - #{view[view.length - n][5]}"
        n-=1
        end

    elsif period == 2
        view = db.execute("SELECT * FROM workouts")
        p "# - Type - intensity - hours slept - mood level"
        n = 7
        until n < 1
        view[view.length - n] 
        p    "#{view[view.length - n][0]} - #{view[view.length - n][2]} - #{view[view.length - n][3]} - #{view[view.length - n][4]} - #{view[view.length - n][5]}"
        n-=1
        end

    elsif period == 3
        view = db.execute("SELECT * FROM workouts")
        p "# - Type - intensity - hours slept - mood level"
        n = 30
        until n < 1
        view[view.length - n] 
        p    "#{view[view.length - n][0]} - #{view[view.length - n][2]} - #{view[view.length - n][3]} - #{view[view.length - n][4]} - #{view[view.length - n][5]}"
        n-=1
        end

    elsif period == 4
        view = db.execute("SELECT * FROM workouts")
        p "# - Type - intensity - hours slept - mood level"
        view.each do |view| 
        puts    "#{view[0]} - #{view[2]} - #{view[3]} - #{view[4]} - #{view[5]}"
    end
    end     
        
end

def choice3(db)

    # create_food_table = <<-F
    # CREATE TABLE IF NOT EXISTS food(
    # id INTEGER PRIMARY KEY,
    # name VARCHAR(255),
    # )
    # F
    # db.execute(create_food_table)
    # db.execute("INSERT INTO food (name) VALUES ("rice")")
    food = db.execute("SELECT * FROM food")
    puts "your food collection: #{food.join(", ")}"
    puts "you random healthy food for today is #{(food[rand(0..(food.length-1))]).join("")}"
     
    puts "press 
    1 to get another random meal
    2 to add food item to your database or 
    3 to go back"
    choice3var = gets.to_i
    until (1..3).include?(choice3var)
        puts "1 to 3 only please"
        choice3var = gets.to_i        
    end
    if choice3var == 1
    puts "you random healthy food for today is #{(food[rand(0..(food.length-1))]).join("")}"
    elsif choice3var == 2
        puts "enter your meal!"
        meal = gets.chomp
        db.execute("INSERT INTO food (name) VALUES (?)",[meal])
    end            

end 


#USER INTERFACE ....................................
puts "Hi, today is 'add date', what would you like to do? "
choice = 0
until choice == 4
    puts <<-UI
    Press:
             1 to enter todays report
             2 to check you history
             3 to get random food you should eat today
             4 to quit
    UI
choice = gets.to_i
    until choice == 1 || choice == 2 || choice == 3 || choice == 4
       puts "be attentive! 1, 2, 3, or 4!"
        choice = gets.chomp
    end

    db = SQLite3::Database.new("data.db")
    create_workouts_table = <<-W
    CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    workout BOOLEAN,
    description VARCHAR(255),
    level INT,
    night INT,
    mood INT
    )
    W

    db.execute(create_workouts_table)


    if choice == 1
        choice1(db) 

    elsif  choice == 2
         choice2(db)

    elsif  choice == 3
         choice3(db)
    elsif choice == 4
        choice = 4
    end

end
puts "Good bye, come back tomorrow!"
    
#need to add quit 