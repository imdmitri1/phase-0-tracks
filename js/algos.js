//release 0
//creating function, assuming that first variable
//in array is longest, making loop to run length times,
// every time checking if variable is longer than
// default one, than assigning it to the default(longest)

var a = ["long phrase","longer phrase","longest phrase"]
var b = ["array","hash","iteration","interpolation","integers"]
//................
function longestVar(arr){
    var longVar = arr[0];
    for (i=1; i<arr.length; i++){
        if (longVar.length < arr[i].length) {
            longVar = arr[i];
        }
    }
    console.log("Longest item of ***"+ arr +"*** is: " + longVar);
    return longVar
}
//#release 1..................
// getting 2 objects as parameters, and name of
// comparing key!!!
// if they are equal, printing: got a match!

function samePair(object1,object2, str1, str2){
    if (object1[str1] == undefined || object1[str2] == undefined ){
    console.log("no match");
    }
    else if (object1[str1] == object2[str1]) {
    console.log("we've got a match: " + str1 +" - " + object1[str1]);
    }
    else if (object1[str2] == object2[str2]) {
    console.log("we've got a match: " + str2 +" - " +  object1[str2]);        
    }
}
       

// release 2......................
// creating empty array in our function,running loop
// for parameter times, every time getting random 
// amount of letters in future variable and than running new loop for this 
//amount of times to get random letter for each count
function randomArr(i){
    var arr = [];
    for (a=0; a < i; a++){
        var result = ""
        var len = Math.floor(Math.random()*10) +1;
            for (var a2=1; a2 <= len; a2++){
                var alph = "abcdefghijklmnopqrstuvwxyz";
                result = result + alph.charAt(Math.floor(Math.random()*26));
            }
        arr[a] = result;
    }    
    console.log(arr);
    return arr;
}

// driver code-----------------------
longestVar(a);
longestVar(b);
//..........
samePair({name: "Steven", age: 54}, {name: "Tamir", age: 54}, "name", "age");
samePair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}, "animal", "legs");
samePair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}, "abc", "def");
//............
randomArr(6);
randomArr(3);
//..........
longestVar(randomArr(10));