// Swiper 생성자(클래스) 생성
// Swiper(선택자, 옵션)
// direction : 방향
//autoplay : true, 자동재생 여부
//loop : true  반복재생 여부
new Swiper('.main .middle>.swiper-container', {
    direction :'vertical',
    autoplay : true,
    loop : true
    

 });

 new Swiper('.middle >.body2 .promotion > div.swiper-container',{
    // 기본값 direction :'horizontal',
    slidesPerView: 3, //한번에 보여줄 슬라이드 개수
    spaceBetween: 50, //  슬라이드 사이 여백
    centeredSlides: true, // 1번 슬라이드가 가운데 보이기
    loop : true,
    autoplay : {
        delay: 5000 //밀리세컨드 단위 기본값 3000 
    },
    pagination:{
        el:'.promotion .swiper-pagination', //페이지 번호 요소 선택자
        clickable: true //사용자의 페이지 번호 요소 제어 가능 여부
    },
    navigation:{
        prevEl:'.promotion .swiper-prev',
        nextEl:'.promotion .swiper-next'
    }

 });
var icons = document.querySelector('.main .middle .menubar .material-icons');
 var sidebar2 = document.querySelector('.main .middle .sidebar');

 function sidebar(){
    if(sidebar2.style.display == 'none'){
    document.querySelector('.main .middle .sidebar').style.display='block'

    }else{
        document.querySelector('.main .middle .sidebar').style.display='none';
    }
 };


//   modal 창 실행

 const modal = document.querySelector('.modal');
 const btnOpenPopup = document.querySelector('.btn-open-popup');
 const btnOpenPopup1 = document.querySelector('.btn-open-popup1');
 const btnclosePop = document.querySelector('body > div > div.modal > span')
 
 btnOpenPopup.addEventListener('click', () => {
     modal.style.display = 'block';
     console.log("팝업");
 });
 
 btnclosePop.addEventListener('click', () => {
     modal.style.display = 'none';


 });
 
 
  btnOpenPopup1.addEventListener('click', () => {
  	console.log("팝업1클릭");
  	

		modal.style.display = 'block';

     

 });
 
 
 btnOpenPopup1.addEventListener('click', () => {
   
function openModal(){
    modal.style.display = 'block';
};

 });
 
 
 

 const login = document.querySelector('.modal > div > div.modal_header > h3:nth-child(1)');
 const register = document.querySelector('.modal > div > div.modal_header > h3:nth-child(2)');
 const body1 = document.querySelector('.modal_login');
 const body2 = document.querySelector('.modal_middle');
 const inputEls1 = document.getElementsByClassName('input-text1');
 const inputEls2 = document.getElementsByClassName('input-text');
 login.addEventListener('click', () => {
    body1.style.display = 'block'
    login.style.color = '#45b6ed'
    for(var i=0; i<inputEls1.length; i++){	
        inputEls1[i].value = '';}
    body2.style.display = 'none'
    register.style.color = '#333'
 });
 register.addEventListener('click', () => {
    body1.style.display = 'none'
    login.style.color = '#333'
    body2.style.display = 'block'
    register.style.color = '#45b6ed'
    for(var i=0; i<inputEls2.length; i++){	
        inputEls2[i].value = '';}
   
 });
 
 