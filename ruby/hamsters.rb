def hamster()
    puts "name?"
    hname = gets.chomp
    puts "how loud is it from 1 to 10?"
    volume = gets.chomp.to_i
    puts "fur color?"
    color = gets.chomp
    puts "is hamster a good candidate for adoption? (y/n)"
    adop = gets.chomp
    until adop == "y" || adop == "n"
      puts "not valid input(use y/n)"
      adop = gets.chomp 
    end
    if adop == "y"
      adop = true   
     else adop == "n" 
      adop = false
    end 
    puts "estimated age?"
    age = gets.chomp
    if age == ""
      age = nil
    else
      age = age.to_i
    end

    puts "The new hamster is called #{hname}."
    puts "From 1 to 10, the hamster is a #{volume} in volume."
    puts "The fur color is #{color}."
    puts "Good for adoption: #{adop}."
    if age == nil
      puts "Its age is hard to estimate."
    else
      puts "Its age is about #{age}."
    end
end

hamster()