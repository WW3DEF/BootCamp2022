function gameClickEvent() {
    let A = document.querySelector("#GameTitle").innerText;
    location.href='GameInsert.game?gname=' + A;
}
onload = function() {
    let B = document.querySelector("#putInCart");
    B.addEventListener('click', gameClickEvent);
}