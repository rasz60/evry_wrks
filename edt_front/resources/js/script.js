<<<<<<< HEAD
var container = document.getElementById('container');
var slideBox = document.getElementById('img_slide');
var slides = document.querySelectorAll('.slide');
var slideLength = slides.length;
var slideIndex = 0;
var conWidth = container.clientWidth;

/*이미지 슬라이드 이동 함수*/
function moveSlide(num) {
    switch(num) {
        case 0 :
            slideBox.style.transform = 'translate(0%)';
            slideIndex = 0;
            break;
        case 1 :
            slideBox.style.transform = 'translate(-25%)';
            slideIndex = 1;
            break;
        case 2 :
            slideBox.style.transform = 'translate(-50%)';
            slideIndex = 2;
            break;
        case 3 :
            slideBox.style.transform = 'translate(-75%)';
            slideIndex = 3;
            break;
    }
};

/* slide_btn1 눌렀을 때 함수 */
function prev_btn() {
    if ( slideIndex == 0 ) {
        slideIndex = 3;
    } else {
        slideIndex--;
    }
    moveSlide(slideIndex);
};

function next_btn() {
    if ( slideIndex == 3 ) {
        slideIndex = 0;
    } else {
        slideIndex++;
    }
    moveSlide(slideIndex);
};

/* 5초에 한 장씩 자동으로 이동하는 함수 */
setInterval(function() {
    if ( slideIndex < 4 ) {
        moveSlide(++slideIndex);
    } else {
        slideIndex = 0;
        moveSlide(slideIndex);
    }                
}, 4000);
=======
var container = document.getElementById('container');
var slideBox = document.getElementById('img_slide');
var slides = document.querySelectorAll('.slide');
var slideLength = slides.length;
var slideIndex = 0;
var conWidth = container.clientWidth;

/*이미지 슬라이드 이동 함수*/
function moveSlide(num) {
    switch(num) {
        case 0 :
            slideBox.style.transform = 'translate(0%)';
            slideIndex = 0;
            break;
        case 1 :
            slideBox.style.transform = 'translate(-25%)';
            slideIndex = 1;
            break;
        case 2 :
            slideBox.style.transform = 'translate(-50%)';
            slideIndex = 2;
            break;
        case 3 :
            slideBox.style.transform = 'translate(-75%)';
            slideIndex = 3;
            break;
    }
};

/* slide_btn1 눌렀을 때 함수 */
function prev_btn() {
    if ( slideIndex == 0 ) {
        slideIndex = 3;
    } else {
        slideIndex--;
    }
    moveSlide(slideIndex);
};

function next_btn() {
    if ( slideIndex == 3 ) {
        slideIndex = 0;
    } else {
        slideIndex++;
    }
    moveSlide(slideIndex);
};

/* 5초에 한 장씩 자동으로 이동하는 함수 */
setInterval(function() {
    if ( slideIndex < 4 ) {
        moveSlide(++slideIndex);
    } else {
        slideIndex = 0;
        moveSlide(slideIndex);
    }                
}, 4000);
>>>>>>> bbf82157058f9a8788c70faf3ab79d15b4d2d295
