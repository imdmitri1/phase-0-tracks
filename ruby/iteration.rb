def sample
    x2 = "Victor"
    x1 = "John"
    puts "good morning,"
    yield(x1,x2)
end

sample { |x1,x2| puts "hello, #{x1}! and bye #{x2}" }






days_of_the_week = ["Mo", "Tu", "we", "th", "Fr", "St", "Sn"]
    puts days_of_the_week
    days_of_the_week.map! do | days|
    days.upcase      
end

p days_of_the_week


daysweek = {x1: "Mo", x2: "Tu", x3: "we", x4: "th", x5: "Fr", x6: "St", x7: "Sn"}
    puts daysweek
    daysweek.each do |day, name|
    name.upcase!
   puts "here is #{day} and name: #{name}"
end

p "1 method: delete_if "


grades = [2,3,3,6,7,9,2,4,6,5]
puts "before #{grades}"
grades.delete_if {|grade| grade < 5 }
puts "after #{grades} "

p "2 method: select"

grades = [2,3,3,6,7,9,2,4,6,5]
new_numbers = []
puts "before #{grades}"
new_numbers << grades.select {|grade| grade < 5 }
puts "after #{new_numbers} "

p "3 method 'kkep_if' "

grades = [2,3,3,6,7,9,2,4,6,5]
keepifnumbers.new
puts "before #{grades}"
keepifnumbers << grades.keep_if {|grade| grade < 6 }
puts "after #{keepifnumbers} "