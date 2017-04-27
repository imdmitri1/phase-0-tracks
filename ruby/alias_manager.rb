#ask for the first and last name
#swap names
#change vowels to the next one in "aeiou"
#and consonants to the next one in alphabet except "aeiou"

def letters_change(arr)
        vowels = ["a","e","i","o","u","a"]
    consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","b"]
    n = -1
        until (arr.length) * -1 > n 
      if vowels.include?(arr[n])
          arr[n] = vowels[vowels.index(arr[n]) + 1]
      elsif consonants.include?(arr[n])
          arr[n] = consonants[consonants.index(arr[n]) + 1]
      end 
      n -=1 
  end
  arr
end
#***********************************************
def name_change(str_name)
    #changing name places and splitting
    str_name = str_name.split(' ').reverse
    r_name1 = str_name[0].downcase.split('')
    r_name2 = str_name[1].downcase.split('')
    f_name1 = []
    f_name2 = []
    f_name1 << letters_change(r_name1)
    f_name2 << letters_change(r_name2)
  f_name = f_name1.join.capitalize + " " + f_name2.join.capitalize 
  f_name
end
#***********************************************
def fake_name_for_user
    puts "Hey, lets get you a fake(coded) name! What is your first and last name?"
    user_input = gets.chomp
    all_names = {}
    until user_input == "quit"
    f_name = name_change(user_input)
    all_names[user_input] = f_name
    puts "Well this would be: #{f_name}"
    puts "If you don't like it, give us another name(type 'quit', when finished):"
    user_input = gets.chomp
    end
    puts "Here are all the names you tried: #{all_names}"
    puts "Thanks for using and good luck!"
end

fake_name_for_user

