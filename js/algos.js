var a = ["long phrase","longer phrase","longest phrase"]
var b = ["array","hash","iteration","interpolation","integers"]
function longestVar(arr){
    var longVar = arr[0];
    for (i=1; i<arr.length; i++){
        if (longVar.length < arr[i].length) {
            longVar = arr[i];
        }
    }
    console.log("Longest item of *"+ arr +"* is: " + longVar);
    return longVar
}

// driver code-----------------------
longestVar(a);
longestVar(b);
