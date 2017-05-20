# Personal Tracker
# pseudo code:
# offer the output or input of the info
# Ask for all the input info (work out, sleep, mood)
# store it in appropriate tables
# create output for desire amount of days
require 'sqlite3'


def choice1(db, date)
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
        if night < 6
            puts "You should sleep at least 6 hours!"
        end
       puts "overall mood today? (1 - bad, 5 - good)"
        mood = gets.to_i
        if mood < 3
            puts "common, you've got to smile!!!"
        end

    else workout == "n"
        workout = "false"
        description = "lazy day"
        level = "0"
       puts "how many hours did you sleep last night?"
        night = gets.chomp.to_i
       puts "overall mood today? (1 - bad, 5 - good)"
        mood = gets.to_i
    end
    db.execute("INSERT INTO workouts (date, workout, description, level, night, mood) VALUES (?, ?, ?, ?, ?, ?)",[date, workout, description, level, night, mood])
    

end

def choice2(db, date)
    view = db.execute("SELECT * FROM workouts")
        if view.length < 30
        puts "Ops, looks like you don't have much records, do you want to synchronize last month? press - 6 !"
        end
    puts <<-PER1
    what period do you want to see?
        1 if you want to choose period in days
        2 for last week
        3 for last month
        4 for all records
        5 show only days with workouts
    PER1
    period = gets.to_i
    until (1..6).include?(period) 
       puts"1 to 5 only!"
        period = gets.to_i
    end
    if period == 1
        puts "how many workouts do you want to see(max=#{view.length})?"
        n=gets.to_i
        while n>view.length
            puts "invalid number, only #{view.length} records available, please enter again"
            n = gets.to_i
        end
        puts "# -  date  - \ttype - \t\tintensity - hours slept last night - mood level"
        until n < 1
        view[view.length - n] 
        puts "#{view[view.length - n][0]} - #{view[view.length - n][1]} - \t#{view[view.length - n][3]} - \t\t#{view[view.length - n][4]} - \t\t\t#{view[view.length - n][5]} - \t#{view[view.length - n][6]}"
        n-=1
        end

    elsif period == 2
        puts "# -  date  - \ttype - \t\tintensity - hours slept last night - mood level"
        n = 7
        if view.length < 7
           n = view.length
        end        
        until n < 1
        view[view.length - n] 
        puts "#{view[view.length - n][0]} - #{view[view.length - n][1]} - \t#{view[view.length - n][3]} - \t\t#{view[view.length - n][4]} - \t\t\t#{view[view.length - n][5]} - \t#{view[view.length - n][6]}"
        n-=1
        end

    elsif period == 3
        puts "# -  date  - \ttype - \t\tintensity - hours slept last night - mood level"
        n = 30
        if view.length < 30
           n = view.length
        end 
        until n < 1
        view[view.length - n] 
        puts "#{view[view.length - n][0]} - #{view[view.length - n][1]} - \t#{view[view.length - n][3]} - \t\t#{view[view.length - n][4]} - \t\t\t#{view[view.length - n][5]} - \t#{view[view.length - n][6]}"
        n-=1
        end

    elsif period == 4
        puts "# -  date  - \ttype - \t\tintensity - hours slept last night - mood level"
        view.each do |view| 
        puts    "#{view[0]} - #{view[1]}  \t#{view[3]}  \t\t#{view[4]}  \t\t#{view[5]}  \t#{view[6]} "
                end
    elsif period == 5
        view1 = <<-VIEW1
            SELECT * FROM workouts WHERE workout="true"
            VIEW1

        view = db.execute(view1)
        puts "# -  date  - \ttype - \t\tintensity - hours slept last night - mood level"
        view.each do |view| 
        puts    "#{view[0]} - #{view[1]}  \t#{view[3]}  \t\t#{view[4]}  \t\t#{view[5]}  \t\t\t#{view[6]} "
                end
    elsif period == 6
        30.times { db.execute("INSERT INTO workouts (date, workout, description, level, night, mood) VALUES (?, ?, ?, ?, ?, ?)",[date,"true", ["swim","run","weight lifting","tennis"][rand(0..3)], rand(1..5), rand(5..8), rand(1..5)]) } 
        p "You successfully added 30 last work outs! ;) "           
    end     
        
end

def choice3(db)

    create_food_table = <<-F
    CREATE TABLE IF NOT EXISTS food(
    name VARCHAR(255)
    )
    F
    db.execute(create_food_table)
    rice = <<-RI
    INSERT INTO food (name) VALUES ("rice")
    RI
    salad = <<-SA
    INSERT INTO food (name) VALUES ("salad")
    SA
    food = db.execute("SELECT * FROM food")
    if food.empty?
        db.execute(rice)
        db.execute(salad)
    end
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
        db.execute(create_food_table)
        puts "enter your meal!"
        meal = gets.chomp
        db.execute("INSERT INTO food (name) VALUES (?)",[meal])
        p "good job!"
    end            

end 


#USER INTERFACE ....................................
puts "Hi, welcome to your personal work out tracker, we want you stay fit and healthy!"
time = Time.new
date = time.strftime("%m/%d/%y")
puts "today is #{time.strftime("%A, %m/%d/%y")}, what would you like to do? "
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
        choice = gets.to_i
    end

    db = SQLite3::Database.new("data.db")
    create_workouts_table = <<-W
    CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    date VARCHAR(255),
    workout BOOLEAN,
    description VARCHAR(255),
    level INT,
    night INT,
    mood INT
    )
    W

    db.execute(create_workouts_table)


    if choice == 1
        choice1(db, date) 

    elsif  choice == 2
         choice2(db, date)

    elsif  choice == 3
         choice3(db)
    elsif choice == 4
        choice = 4
    end

end
puts "Good bye, come back tomorrow!"
    
