document.addEventListener('DOMContentLoaded', function() {
    
    let body        = document.querySelector('body');
    let header      = document.querySelector('header');
    
    let img         = document.createElement('img');
    let titre       = document.createElement('div');
    img.classList.add("img-anim-contact");
    img.setAttribute("src", "images/tanjfeu.png");
    titre.classList.add("title-contact");
    titre.innerText = 'Contactez-nous pourfendeurs !';
    
    let reseaux     = document.querySelector('.reseaux-enfant');
    
    let idTimeout;
        
    window.setTimeout(idTimeout);
    
    idTimeout = window.setTimeout(function() {
        header.style.animation = 'fadeOut 2.5s';
    }, 0);
    window.setTimeout(function() {
        header.style.opacity = 0;
    }, 2500);
        
        
    idTimeout = window.setTimeout(function() {
        header.remove();
        body.style.animation = 'bcg-color-anim 2.5s';
    }, 2000);
    window.setTimeout(function() {
        body.style.background = 'black';
    }, 4500);
    
    
    
    idTimeout = window.setTimeout(function() {
        body.append(titre);
        body.append(img);
    }, 3500);
    
    idTimeout = window.setTimeout(function() {
        
        reseaux.style.animation = 'fadeIn 2.5s';
    }, 5000);
    window.setTimeout(function() {
        reseaux.style.opacity = 1;
    }, 7500);
    
})
