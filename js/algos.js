
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
//#release 2..................
function samePair(object1,object2){
    for (i=0; i < object1.length-1; i++){
        if (object1[i] == object2[i]){
            console.log("we've got a match:" + object1 +" = " +object2);
        }
    }
}
// release 3......................

// driver code-----------------------
longestVar(a);
longestVar(b);
//..........
samePair({name: "Steven", age: 54}, {name: "Tamir", age: 54});
samePair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
//............
randomArr(10);
randomArr(3);
//..........
longestVar(randomArr(15));