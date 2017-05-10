var colors = ["black", "brown", "white", "gray"];
var names = ["Dmitri", "Kelsey", "Glenna", "Bob"];
colors.push("tan");
names.push("Ad");


    var newObj = {};
for (var i=0; i < names.length; i++){
    newObj[names[i]] = colors[i];
}





// driver code _--------------
// console.log(colors);
// console.log(names);

console.log(newObj);


function Car(model, make, year, color){
    this.model = model;
    this.make = make;
    this.year = year;
    this.color = color;
    this.drives = function(){
        console.log(this.model +" drives fast");
    }
    this.wheels = 4;
    this.runsgreat = true;
    this.sale = function(){
        if (this.runsgreat == true){
            console.log("you should buy it!");
        }
        else {
            console.log("keep looking");
        }
    }
     console.log(this);
}

//driver code------------
var newcar = new Car("malibu","chevy", 2017, "yellow");
//console.log(newcar);
newcar.drives();
newcar.wheels;
newcar.sale();


var oldcar = new Car("camry", "toyota", 1990, "dirty blue");
oldcar.runsgreat = false;
oldcar.sale();

var fancycar = new Car("hammer 3", "hammer", 2008, "camouflage");
fancycar.sale();
