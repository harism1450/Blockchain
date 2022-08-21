// alert("Hello World!");
// console.log("Hello World!");
// document.write("Hello World!");

// var a = 4;
// var b = 3;
// var c = a+b;
// alert(c);

// var a = "4";
// var b = 3;
// var c = a+b;
// alert(c);

// var a = parseInt(prompt("Enter a value", "your valueis"));
// var b = 10;
// var c = a+b;
// alert(c);

//comparison k liye == lagayen ge to sirf compare krega === hoga to datatype bhi dekhega

// var x = 12;
// if (x == 12) {
//     alert("yes");
// }else{
//     alert("no");
// }

// var perc = prompt("Enter your percentage: ");
// if(perc >= 80 && perc < 100){
//     alert("A+");
// }else if(perc >= 70 && perc < 80){
//     alert("A");
// }else if(perc >= 60 && perc < 70){
//     alert("B");
// }else if(perc >= 50 && perc < 60){
//     alert("C");
// }else if(perc >= 40 && perc < 50){
//     alert("D");
// }else if(perc >= 00 && perc < 40){
//     alert("F");
// }else{
//     alert("Invalid")
// }

// //ARRAYS
// var a = ["abc", 1, true, 4.7];

// var c = new Array("abc", 1, true, 4.7);
// var a = 6;
// var b = typeof(a);
// alert(b);
// alert(typeof(c));

// var a = ["abc", 1, true, 4.7]
// undefined
// var a = ["a","b","c","d"]
// undefined
// a.length
// 4
// a.push("g")
// 5
// a.unshift("g")
// 6
// a
// (6) ['g', 'a', 'b', 'c', 'd', 'g']
// a.shift()
// 'g'
// a.splice(1, "A")
// []
// a
// (5) ['a', 'b', 'c', 'd', 'g']0: "a"1: "b"2: "c"3: "d"4: "g"length: 5[[Prototype]]: Array(0)
// a.splice(1, 2, "A", "C")
// (2) ['b', 'c']
// a
// (5) ['a', 'A', 'C', 'd', 'g']
// var b = a.slice(1,3);
// undefined
// b
// (2) ['A', 'C']
// var c = a(2)
// VM550:1 Uncaught TypeError: a is not a function
//     at <anonymous>:1:9
// (anonymous) @ VM550:1
// var c = a.slice(2)

// undefined
// c
// (3) ['C', 'd', 'g']

//loop
// var a = ["a","b","c","d"];
// var i = 0;
// while(i<=5){
//     alert(i++);
// }

// do{
//     alert(i++);
// }while(i<=5)

// for(i = 0;i<=5;i++){
//     alert(i);
// }


// function greet(){
//     alert("Hello!!!");
// }

// function add(a,b){
//     alert(a+b);
// }

// function sub(a,b){
//     alert(a-b);
// }

// function mul(a,b){
//     alert(a*b);
// }

// function div(a,b){
//     alert(a/b);
// }

// function calc(){
//     // var a = +prompt("Enter first number:");
//     // var b = +prompt("Enter first number:");
//     var a = +document.getElementById("fn").value;
//     var b = +document.getElementById("sn").value;
//     if (document.getElementById("add").checked) {
//         add(a,b);
//     }else if (document.getElementById("sub").checked) {
//         sub(a,b);
//     }else if (document.getElementById("mul").checked) {
//         mul(a,b);
//     }else if (document.getElementById("div").checked) {
//         div(a,b);
//     }
// }
// greet();

// function add(a,b){
//     return a+b;
// }
// alert(add(2,4));


//js apps using dom
// stopwatch calculator todo 


function getNumber(number){
    var number = document.getElementById(number).value;
    var calldata = document.getElementById("callinput");
    calldata.value += number;
}

function solveEq(){
    var calldata = document.getElementById("callinput");
    var result = eval(calldata.value);
    calldata.value = result;
}