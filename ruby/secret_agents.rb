# Algorithm:
# - count letters
# - using index, change letters with .next
# - check if string == space, do nnoting

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
encrypt("ab c")
encrypt("zed") 




