let hello = document.getElementById("display");

function addToDisplay(value) {
    document.getElementById("display").value += value
}

function clearD() {
    hello.value = ""
}
function result() {
    let hello = document.getElementById("display").value;
    let answer = eval(hello);
    document.getElementById("display").value = answer;
}
function backspace() {
    hello.value = hello.value.slice(0, -1);
}
    
function squareroot() {
    let inputValue = parseFloat(hello.value);
    hello.value = Math.sqrt(inputValue);
    
  }
function logarithm() {
    inputValue = parseFloat(hello.value);
    hello.value = Math.log10(inputValue);
}
function cosine() {
    inputValue = parseFloat(hello.value);
    hello.value = Math.cos(inputValue);
}
function tangent() {
    inputValue = parseFloat(hello.value);
    hello.value = Math.tan(inputValue);
}
function sin() {
    inputValue = parseFloat(hello.value);
    hello.value = Math.sin(inputValue);
}

function pi() {
    hello.value += Math.PI;
}
function powerOfTwo() {
    let inputValue = parseFloat(hello.value);
    let result = inputValue * inputValue;
    hello.value = result;
}








