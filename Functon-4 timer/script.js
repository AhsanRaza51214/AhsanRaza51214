let hour = document.getElementById("hour");
let mint = document.getElementById("mint");
let sec = document.getElementById("sec");

setInterval(() => {
    let time = new Date();
    hour.innerHTML = time.getHours();
    mint.innerHTML = time.getMinutes();
    sec.innerHTML = time.getSeconds();

}, 1000);

