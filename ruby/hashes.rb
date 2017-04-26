#ask if form needs to be filled up
#create empty hash
#ask for the name, age, kids, fav color, if ready to book
#ask if want to add smth else
#ask to somehow correct mistakes

puts "hello! do we have a client?"
client=gets.chomp
application = {name:"", age:"", kids:"", color:"" }
#filling out form if yes/y
if client == "yes" || client == "y"
 puts "Name:"
 application[:name] = gets.chomp
 puts "Age:"
 application[:age] = gets.chomp.to_i
 puts "have kids? (y/n)"
 if gets.chomp == "y"
     application[:kids] = true
 else application[:kids] = false
 end
 puts "favorite color?"
 application[:color] = gets.chomp.to_s
   #printing whole hash
   puts application
   #asking for update
   puts "would you like to update something (y/n)?"
   if gets.chomp == "y" 
    #asking for key
    puts "please enter description name:"
    mistake_key = gets.chomp.to_sym
    #asking for value
    puts "please enter description:"
    mistake_value = gets.chomp
    application[mistake_key] = mistake_value
    puts application
    else puts"thanks for filling out!"
    end
#saying BYE if answer "no" at the beginning
else puts"Good bye!"
end