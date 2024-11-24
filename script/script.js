const nav = document.querySelector(".nav");
const menu = document.querySelector(".menu-icon");
const close = document.querySelector(".close");

menu.addEventListener("click", () => {
    nav.classList.add("nav-visible");
    close.classList.add("close-show");
});

close.addEventListener("click", () => {
    nav.classList.remove("nav-visible");
    close.classList.remove("close-show");
});

const slidesContainer = document.getElementById("slides-container");
const slide = document.querySelector(".slide");
const prevButton = document.getElementById("slide-arrow-prev");
const nextButton = document.getElementById("slide-arrow-next");


nextButton.addEventListener("click", () => {
    const slideWidth = slide.clientWidth;
    slidesContainer.scrollLeft += slideWidth;
});

prevButton.addEventListener("click", () => {
    const slideWidth = slide.clientWidth;
    slidesContainer.scrollLeft -= slideWidth;
});


const miniSlidesContainerHab = document.getElementById("mini-slides-container-habitats");
const miniSlideHab = document.querySelector(".mini-slide-habitat");
const prevButtonHab = document.getElementById("mini-slide-arrow-prev");
const nextButtonHab = document.getElementById("mini-slide-arrow-next");

nextButtonHab.addEventListener("click", () => {
    const slideWidth = miniSlideHab.clientWidth;
    miniSlidesContainerHab.scrollLeft += slideWidth;
});

prevButtonHab.addEventListener("click", () => {
    const slideWidth = miniSlideHab.clientWidth;
    miniSlidesContainerHab.scrollLeft -= slideWidth;
});


const miniSlidesContainerAnimaux = document.getElementById("mini-slides-container-animaux");
const miniSlideAnimaux = document.querySelector(".mini-slide-animaux");
const prevButtonAnimaux = document.getElementById("mini-slide-arrow-prev-animaux");
const nextButtonAnimaux = document.getElementById("mini-slide-arrow-next-animaux");

nextButtonAnimaux.addEventListener("click",  () => {
const slideWidth = miniSlideAnimaux.clientWidth;
miniSlidesContainerAnimaux.scrollLeft += slideWidth;
});

prevButtonAnimaux.addEventListener("click", () =>  {
    const slideWidth = miniSlideAnimaux.clientWidth;
    miniSlidesContainerAnimaux.scrollLeft -= slideWidth;
});





