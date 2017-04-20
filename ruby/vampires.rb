def new_e 
    print "welcome! how many applicants applying today?"
    number = gets.chomp.to_i
 if number <= 0 
        print "okay, Good Bye!"
 else 
    while number > 0
        puts "what's your name?"
        ename = gets.chomp

        puts "How old are you?"
        old = gets.chomp.to_i
        puts "what year were you born?"
        year = gets.chomp.to_i
        if old == 2017 - year
            age = true
        else
            age = false
        end

        puts "Can we order garlic bread for you?(y/n)"
        bread =gets.chomp
        until bread == "y" || bread == "n"
            print "invalid entry(answer: y/n)"
            bread = gets.chomp 
        end 
        if bread == "y"
            bread = true
        elsif bread == "n"
            bread = false
        else 
        end
        

            

        puts "are enrolling in company's health insurance?(y/n)"
        insurance = gets.chomp
        until insurance == "y" || insurance == "n"
            print "invalid entry(answer y/n)"
            insurance = gets.chomp
        end
        if insurance == "y"
            insurance = true
        else insurance = false
        end


        if age && (bread || insurance)
              result = "probably NOt a vampire"
        elsif !age && !bread && !insurance
              result = "Almost certainly A vampire"   

        elsif !age && (!bread || !insurance)
              result = "probably A vampire"
        elsif ename == "Drake Cula" ||
              ename == "Tu Fang" 
              result = "definitely A vampire"
        else  result = "results inconclusive"
        end

        print "Name any allergies: (enter one at a time, enter 'done' when finished)"
        allergy = gets.chomp
        until allergy == "done" || allergy == "sunshine"
            allergy = gets.chomp        
        end
        if allergy == "sunshine"
            result = "probably A vampire"
        else
        end
        p result
    number -=1
    end
   puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
  end
end 
p new_e
