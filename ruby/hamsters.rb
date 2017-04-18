def hamster()
    puts "name?"
    hname = gets.chomp
    puts "how loud is it from 1 to 10?"
    volume = gets.chomp.to_i
    puts "fur color?"
    color = gets.chomp
    
    valid=false
    until valid  #adop == "y" ||adop == "n"
        puts "is hamster a good candidate for adoption? (y/n)"
        adop = gets.chomp
        if adop == "y"
            adop = true
            valid=true
        elsif adop == "n" 
            adop = false
            valid=true
        else 
            puts "not valid input(use y/n)"
         end 
    end
    puts "estimated age?"
    age = gets.chomp.to_i
    if age == ""
        age = nil
    else age
    end
puts "The new hamster called #{hname}."
puts "From 1 to 10 the hamster is #{volume}"
puts "The fur color is #{color}"
puts "Good for adoption: #{adop}"
puts "His age is about #{age}"
end

p hamster()




# def hamster()
#     puts "name?"
#     hname = gets.chomp
#     puts "how loud is it from 1 to 10?"
#     volume = gets.chomp.to_i
#     puts "fur color?"
#     color = gets.chomp
#     puts "is hamster a good candidate for adoption? (y/n)"
#         adop = gets.chomp
    
#     until adop == "y" ||adop == "n"
#             puts "not valid input(use y/n)"
#             adop = gets.chomp
         
#     end
#     if adop == "y"
#             adop = true
            
#      else adop == "n" 
#             adop = false
#     end 
#     puts "estimated age?"
#     age = gets.chomp.to_i
#     if age == ""
#         age = nil
#     else age
#     end
# p adop 
# end

# p hamster()




