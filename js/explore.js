//  taking the string and creating loop for the
// length of the string, each step takes last 
// letter of the string and adding to a new variable 



function reverse(str) {
    var b = ""
    for (var i = str.length -1; i >= 0; i--) {
        b = b+str[i]
}
    console.log(b)
    return b
}

//driver code:
reverse("hello")
reverse("stressed")

//checking if palindrome
 function palindromeCheck(str){
    if (str == reverse(str)) {
        console.log( str + " is palindrome!");
    } else { console.log(str + " is not palidrome!");
    }
 }

palindromeCheck("hahah")
palindromeCheck("rainy day")