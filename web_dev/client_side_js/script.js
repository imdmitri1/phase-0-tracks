// console.log("JavaScript is running");

// var table =document.getElementsByTagName("table");

// table.hidden = true;

// // table.border = "5px solid black"

// var bg = document.getElementByName("a1-1.jpg");
// bg.hidden = true;


// var welcome = document.getElementsByTagName("h3")
// welcome.style.color: "red";

var photo = document.getElementById("lizard-photo");
photo.style.border = "3px solid red"



// var par = document.getElementsByTagName("p");
// par.style.fontSize = "xx-large";
// par.style.align = "center"

var body = document.getElementById("about-my-pet");
body.style.backgroundColor = "grey";

var list = document.getElementsByTagName("ul");
list
var line = list[1];
line
// line.style.border = "3px solid red";

// var a = document.getElementsByClassName("a1");
// a.style.color = "blue";

var newp = document.createElement('p');
var newptext = document.createTextNode("some text here");
newp.appendChild(newptext);


// release 2 .................................

function addblueborder(event){
    console.log("happened");
    console.log(event);
    event.target.style.border = "5px dashed blue";
}

var picture = document.getElementById("lizard-photo");
photo.addEventListener("mouseover", addblueborder);

function gobackborder(event){
    console.log("happened");
    console.log(event);
    event.target.style.border = "3px solid red";
}
var picture = document.getElementById("lizard-photo");
photo.addEventListener("mouseout", gobackborder);

//................

function bgcolor(event){
    // console.log(event);
    event.target.style.backgroundColor = "purple";
}
var bg = document.getElementById("about-my-pet");
bg.addEventListener("dblclick", bgcolor);
// bg.addEventListener("mouseenter", bgcolor);

function bg2color(event){
    // console.log(event);
    event.target.style.backgroundColor = "light grey";
}
bg.addEventListener("mouseleave", bg2color);


