const hamburguer = document.querySelector(".hamburguer");
const navMenu = document.querySelector(".nav-menu");

function mobileMenu(){
    hamburguer.classList.toggle("active");
    navMenu.classList.toggle("active");
}

hamburguer.addEventListener("click", mobileMenu);

function closeMenu(){
    hamburguer.classList.remove("active");
    navMenu.classList.remove("active");
}

const navLink = document.querySelector(".nav-link"); 

navLink.forEach(n => n.addEventListener("click",closeMenu));