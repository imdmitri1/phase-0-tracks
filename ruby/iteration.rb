def sample_1
    puts "good morning, what are your names?(first name, after enter, second name)"
    yield(x1 = gets.chomp,x2 = gets.chomp)

end

sample_1 { |x1,x2|  puts "hello, #{x1}! and bye #{x2}" }

p "."*50

def sample_2
    
    x2 = "Victor"
    x1 = "John"
    puts "good morning,"
    yield(x1,x2)
end

sample_2 { |x1,x2| puts "hello, #{x1}! and bye #{x2}" }

p "."*50


days_of_the_week = ["Mo", "Tu", "we", "th", "Fr", "St", "Sn"]
puts days_of_the_week
days_of_the_week.map! do | days|
    days.upcase      
end

p days_of_the_week

p "."*50


daysweek = {x1: "Mo", x2: "Tu", x3: "we", x4: "th", x5: "Fr", x6: "St", x7: "Sn"}
puts daysweek
daysweek.each do |day, name|
    name.upcase!
    puts "here is #{day} and name: #{name}"
end

p "."*50

p "1 method: delete_if  for array"


grades = [2,3,3,6,7,9,2,4,6,5]
puts "before #{grades}"
grades.delete_if {|grade| grade < 5 }
puts "after #{grades} "

p "."*50

p "2 method: select  for array"

grades = [2,3,3,6,7,9,2,4,6,5]
new_numbers = []
puts "before #{grades}"
new_numbers << grades.select {|grade| grade < 5 }
puts "after #{new_numbers} "
p "."*50

p "3 method 'kep_if' for array"

grades = [2,3,3,6,7,9,2,4,6,5]
keepifnumbers = Array.new
puts "before: #{grades}"
keepifnumbers << grades.keep_if {|grade| grade < 7 }
puts "after: #{keepifnumbers} "
p "."*50

p "4 method 'drop_while' for array"

grades = [2,3,3,6,7,9,2,4,6,5]
puts "before #{grades}"
p  "after: #{grades.drop_while {|grade| grade < 8 }}"
p "."*50

p "1 method: delete_if  for hash"

daysweek = {x1: "Mo", x2: "Tu", x3: "we", x4: "th", x5: "Fr", x6: "St", x7: "Sn"}
puts "before:  #{daysweek}"
daysweek.delete_if {|day, name| day == :x1 }
puts "after: #{daysweek}" 
p "."*50

p "2 method: select  for hash"

daysweek = {x1: "Mo", x2: "Tu", x3: "we", x4: "th", x5: "Fr", x6: "St", x7: "Sn"}
puts "before:  #{daysweek}"
puts "after: #{daysweek.select {|day, name| name == "Mo" }}"

p "."*50

p "3 method: 'keep_if'  for hash"

daysweek = {x1: "Mo", x2: "Tu", x3: "we", x4: "th", x5: "Fr", x6: "St", x7: "Sn"}
puts "before:  #{daysweek}"
puts "after: #{daysweek.keep_if {|day, name| day == :x3 }}"
p "."*50

p "4 method: 'reject'  for hash"

daysweek = {x1: "Mo", x2: "Tu", x3: "we", x4: "th", x5: "Fr", x6: "St", x7: "Sn"}
puts "before:  #{daysweek}"
puts "after: #{daysweek.reject {|day, name| name == "th" || name == "Mo"}}"
puts "after: #{ daysweek}"
