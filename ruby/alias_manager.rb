#ask for the first and last name
#swap names
#change vowels to the next one in "aeiou"
#and consonants to the next one except "aeiou"

def fake_name
    #changing name places and splitting
    puts
    str_name = "Felicia Torres"
    str_name = str_name.split(' ').reverse
    vowels = ["a","e","i","o","u","a"]
    consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","b"]
    f_name1 = []
    f_name2 = []
    name1 = str_name[0].downcase.split('')
    name2 = str_name[1].downcase.split('')
    n = -1
    until (name1.length) * -1 > n 
                      if vowels.include?(name1[n])
                      name1[n] = vowels[vowels.index(name1[n]) + 1]
                    elsif consonants.include?(name1[n])
                      name1[n] = consonants[consonants.index(name1[n]) + 1]
                    end 
                    n -=1 
             end 
    n1 = -1
    until (name2.length) * -1 > n1 
                      if vowels.include?(name2[n1])
                      name2[n1] = vowels[vowels.index(name2[n1]) + 1]
                    elsif consonants.include?(name2[n1])
                      name2[n1] = consonants[consonants.index(name2[n1]) + 1]
                    end 
                    n1 -=1 
             end 
    p name1
    p name2
end
fake_name