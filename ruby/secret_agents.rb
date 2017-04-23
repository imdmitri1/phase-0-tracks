# Algorithm:
# - count letters
# - using index, change letters with .next
# - check if string == space, do noting


def encrypt(str)
    password = str.to_s
    n = password.length
    count=0
    secretpassword=""
    until count == n 
         secret = password[count]
         if secret =="z"
            secret ="a"
         elsif secret ==" "
            secret = " "
         else secret =secret.next
         end
         secretpassword += secret
          count +=1
    end
    p secretpassword
end

# encrypt("ab c")
# encrypt("zed") 




def decrypt(str)
   parts = str.to_s 
   n = parts.length   
   count=0 
   word=""
   until count == n
   let = parts[count]
   if let == " "
     password = " "
   else 
   number = "abcdefghijklmnopqrstuvwxyz".index(let)
   number -= 1 
   password ="abcdefghijklmnopqrstuvwxyz"[number]
   end
   word += password
   count +=1 
   end 
   p word 
   
end

# decrypt("b cd") 
# decrypt("afe")

# decrypt(encrypt("swordfish"))


# OUR DRIVER CODE

#ask for encryption(1) or decryption(2)
puts "Hello! Would you like to encrypt(1) or decrypt(2) you password?"
option = gets.chomp
#ask again if not 1 or 2
until option == "1" || option == "2"
    p "invalid entry, please enter 1/2"
    option = gets.chomp
end
#ask for pasword
puts "whats the password?"
password =gets.chomp.to_s
#print result
puts "here is your result:"
if option == "1"
    encrypt(password)
else decrypt(password)
end
puts "thank you, and have a nice day!"
