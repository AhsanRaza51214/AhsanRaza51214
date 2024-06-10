// table of 8

// let n = 8;
// for (let a = 1; a <= 100; a++){
//     document.write(n + " x " + a + " = " + n * a + "<br>")
// }
let n = prompt("Enter a number");
for (let a = 1; a <= 100; a++){
    document.write(n + " x " + a + " = " + n * a + "<br>")
}



//Calculate sum of 1 to 100
let sum = 0;
let num = 5;
for (let i = 1; i <= num; i++){
    sum = sum + i;
}
console.log("sum =", sum);
;

//for of loop character and sizing
console.log("For-of loop")

let str = "javascript";
let size = 0;
for (let i of str) {
    console.log("i = ", i);
    size++;
}
console.log("String size = ", size);




//for in loop
console.log("For In Loop");
let student = {
    name: "Ahsan Raza ",
    age: 20,
    Marks: 720,
    Ispass: true,

};
for (let key in student) {
    console.log("key = ", key, ":", "Value = ", student [key] );
}