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
// 
function samePair(object1,object2){
    for (i=0; i < object1.length-1; i++){
        if (object1[i] == object2[i]){
            console.log("we've got a match:" + object1 +" = " +object2);
        }
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
samePair({name: "Steven", age: 54}, {name: "Tamir", age: 54});
samePair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
//............
randomArr(6);
randomArr(3);
//..........
longestVar(randomArr(10));