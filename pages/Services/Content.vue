<template>
    <div class="content-wrapper">
      <Nav/>
      <div id="overlay"></div>
      <div id="overlay2"></div>
      <div class="content-main">
        <h1 class="content-maintitle">
          CONTENT <span>YOU WILL LOVE</span>
        </h1>
      </div>
      <div class="content-cardswrapper">
        <div class="content-card shadow-lg">
             <div class="content-img"><img src="~/assets/images/content1.png" alt=""> </div>
          <div class="content-cardmain">
            <a href="https://bonyeza-2018.appspot.com/" class="content-cardbtn">
              <i class='fa fa-chevron-right'></i>
            </a>
            <h4 class="content-cardtitle">
              INFORTAINMENT
            </h4>
            <p class="content-carddetails">
              Subscription Services
            </p>
          </div>
        </div>
        <div class="content-card shadow-lg">
          
            <div class="content-img"><img src="~/assets/images/content2.png" alt=""> </div>
          <div class="content-cardmain">
            <a href="https://bonyeza-2018.appspot.com/" class="content-cardbtn">
              <i class='fa fa-chevron-right'></i>
            </a>
            <h4 class="content-cardtitle">
              QUOTES
            </h4>
            <p class="content-carddetails">
              Love | Bible | Quran |Inspiration
            </p>
          </div>
        </div>
        <div class="content-card shadow-lg">
          <div class="content-img"><img src="~/assets/images/content3.png" alt=""> </div>
          <div class="content-cardmain">
            <a href="https://bonyeza-2018.appspot.com/" class="content-cardbtn">
              <i class='fa fa-chevron-right'></i>
            </a>
            <h4 class="content-cardtitle">
              BONYEZA
            </h4>
            <p class="content-carddetails">
              Music | Bonyeza699 | Videos
            </p>
          </div>
        </div>
        <div class="content-card shadow-lg">
           <div class="content-img"><img src="~/assets/images/content4.png" alt=""> </div>
          <div class="content-cardmain">
            <a href="https://bonyeza-2018.appspot.com/" class="content-cardbtn">
              <i class='fa fa-chevron-right'></i>
            </a>
            <h4 class="content-cardtitle">
              MY SKIZA 
            </h4>
            <p class="content-carddetails">
              Music | Bonyeza811 | Videos
            </p>
            <p class="content-carddetails">
              
            </p>
          </div>
        </div>
        <div class="content-card shadow-lg">
           <div class="content-img"><img src="~/assets/images/Skizab.jpg" alt=""> </div>
          <div class="content-cardmain">
            <a href="https://skizatone.com/" class="content-cardbtn">
              <i class='fa fa-chevron-right'></i>
            </a>
            <h4 class="content-cardtitle">
              SKIZA BIASHARA
            </h4>
            <p class="content-carddetails">
              Music | Dial811 | Boost Biashara Yako
            </p>
            <p class="content-carddetails">
              
            </p>
          </div>
        </div>
      </div>
    </div>
</template>

<script>
import contentImg from "assets/images/content.png";
export default {
  data() {
    return {
      image: {backgroundImage:`url(${contentImg})`},
    };
  }
};
</script>

<style>
  .content-wrapper{
    background:url('./assets/images/content5.png');
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    padding-bottom: 50px;
  }
  .content-wrapper:after{
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    background: linear-gradient( rgba(0, 23, 32, 0.5) 100%, rgba(255, 32, 32, 0.5) 100%);
    top: 0;
    left: 0;
    opacity: .5;
    z-index: 1;
  }
  #overlay,
  #overlay2{
    width: 180px;
    height: 500px;
    border-radius: 200px;
    background: var(--white);
    position: absolute;
    z-index: 20;
    overflow: visible;
  }
  .content-wrapper #overlay2{
    top: -130px;
    right: 300px;
    transform: rotate(12deg);
    mix-blend-mode: soft-light;
    opacity: 40%;
  }
  .content-wrapper #overlay{
    top: 100px;
    right: 150px;
    transform: rotate(12deg);
    mix-blend-mode: soft-light;
    opacity: 40%;
  }
  .content-main{
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    color: var(--white);
    z-index: 50;
    padding: 15rem 0 5rem 0;
  }
  .content-maintitle{
    font-size: 5rem;
    font-weight: 900;
    line-height: 1;
    width: 50%;
    color: var(--yellow);
  }
  .content-maintitle span{
    font-size: 5rem;
    font-weight: 900;
    color: var(--white);
  }
  .content-maindetails{
    font-size: 1.5rem;
    line-height: 1.2;
    font-weight: 300;
    margin: 20px 0;
    width: 50%;
  }
  .content-gamesbtn{
    padding: 5px 20px;
    color: var(--white);
    text-align: left;
    font: bold 14px/23px Montserrat;
    background: transparent linear-gradient(180deg, #F8BA2D 0%, #FF7805 100%) 0% 0% no-repeat padding-box;
    border-radius: 43px;
    align-items: center;
    margin-top: 30px;
    width: 130px;
    
  }
  .content-cardswrapper{
    width: 86%;
    max-width: 1400px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 10px;
    z-index: 99;
  } 
  .content-card{
    display: flex;
    flex-direction: column;
  }
  .content-cardmain{
    margin-top: -100px;
    padding-top: 100px;
    background: var(--white);
    padding-left: 20px;
  }
  .content-cardtitle{
    font-weight: bold;
    font-size: 1.2rem;
    margin: 10px 0;
    color: var(--black);
  }
  .content-carddetails{
    font-size: .9rem;
    line-height: 1.3;
    margin-bottom: 20px;
    color: var(--black);
  }
  .content-cardbtn{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 20px;
    float: right;
    height: 25px;
    padding: 5px;
    margin-top: 10px;
    width: 25px;
    border-radius: 50%;
    box-shadow: -3px 3px 10px rgb(41, 41, 41);
  }
  .content-card:nth-child(1) .content-cardbtn{
    background:var(--orange);
  }
  .content-card:nth-child(2) .content-cardbtn{
    background:var(--pinkish);
  }
  .content-card:nth-child(3) .content-cardbtn{
   background:var(--greenish);
  }
  .content-card:nth-child(4) .content-cardbtn{
    background:var(--realorange);
  }
  .content-card:nth-child(5) .content-cardbtn{
    background:var(--othergreen);
  }
.content-img{
  z-index: 50;
}
 @media only screen and (max-width: 800px) {
   .content-maintitle {
    font-size: 4rem;
    }
    .content-maintitle span{
    font-size: 4rem;
    }
 }
 @media only screen and (max-width: 1300px){
    .content-cardswrapper{
      grid-template-columns: repeat(3, 1fr);
    }
  }
   @media only screen and (max-width: 900px){
    .content-cardswrapper{
      grid-template-columns: repeat(2, 1fr);
    }
  }
   @media only screen and (max-width: 650px){
    .content-cardswrapper{
      grid-template-columns: repeat(1, 1fr);
    }
  }
</style>