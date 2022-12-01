let last_scrollTop = 0;
function scrollEvent() {
    let A = document.querySelector("#Category");
    let B = document.querySelector("#header");
    let C = this.scrollY;
    let aT = A.style.top;
    let bH = B.style.height;
    if(C > last_scrollTop) {
        B.style.height = "0%";
        A.style.top = "0%";
        if(aT == '10%') {
            
            B.animate([
                {height: "10%"},
                {height: "0%"}
            ], {
                duration: 100,
                fill: "forwards"
            });
            
            A.animate([
                {top: "10%"},
                {top: "0%"}
            ], {
                duration: 100,
                fill: "forwards"
            });
        }
    } else {
        A.style.top= "10%";
        B.style.height= "10%";
        if(bH == '0%') {
        B.animate([
            {height: "0%"},
            {height: "10%"}
        ], {
            duration: 100,
            fill: "forwards"
        });
        A.animate([
            {top: "0%"},
            {top: "10%"}
        ], {
                duration: 100,
                fill: "forwards"
        });
    }
}
    last_scrollTop = C;
    console.log(aT);
    console.log(bH);
}
function summaryEvent() {
    let summaryLoc = document.querySelector("#TwoSection").offsetTop;
    window.scrollTo({top:summaryLoc, behavior:'smooth'});
}
function featureEvent() {
    let featureloc = document.querySelector("#ThreeSection").offsetTop;
    window.scrollTo({top:featureloc, behavior:'smooth'});
}
function systemRequireEvent() {
    let systemloc = document.querySelector("#FourthSection").offsetTop;
    window.scrollTo({top:systemloc, behavior:'smooth'});
}
onload = function() {
    let summary = document.querySelector("#summary");
    let feature = document.querySelector("#feature");
    let system = document.querySelector("#systemRequire");
    system.addEventListener('click', systemRequireEvent);
    feature.addEventListener('click', featureEvent);
    summary.addEventListener('click', summaryEvent);
    window.addEventListener('scroll', scrollEvent);
}