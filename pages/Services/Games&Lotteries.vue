<template>
<div>
      <Nav/>
    <div class="games-wrapper">
      <div id="overlay"></div>
      <div id="overlay2"></div>
      <div class="games-main">
        <h1 class="games-maintitle">
          BEST GAMES <span>IN TOWN</span>
        </h1>
      </div>
      <div class="games-cardswrapper">
        <div class="games-card">
          <div class="games-cardheader">
            <img src="~/assets/images/cheza.png">
          </div>
          <div class="games-cardmain">
            <h4 class="games-cardtitle">
              Cheza Chini
            </h4>
            <p class="games-carddetails">
              Cheza Chini is an exciting bidding game where user get to buy high value items at very low prices
            </p>
            <a href="https://chezachinibids.com/">
              <img class="games-cardicon"  src="~/assets/images/lightblueright-arrow.png" alt="">
            </a>
          </div>
        </div>
      </div>
    </div>
    </div>
</template>

<script>
export default {

}
</script>

<style>
  .games-wrapper{
    background:url('./assets/images/games1.jpg');
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    padding-bottom: 50px;
  }
  .games-wrapper:after{
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
  .games-wrapper #overlay2{
    top: -130px;
    right: 300px;
    transform: rotate(12deg);
    mix-blend-mode: soft-light;
    opacity: 40%;
  }
  .games-wrapper #overlay{
    top: 100px;
    right: 150px;
    transform: rotate(12deg);
    mix-blend-mode: soft-light;
    opacity: 40%;
  }
  .games-main{
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    color: var(--white);
    z-index: 3;
    padding: 15rem 0 5rem 0;
  }
  .games-maintitle{
    font-size: 5rem;
    font-weight: 900;
    line-height: 1;
    width: 50%;
    color: var(--yellow);
  }
  .games-maintitle span{
    font-size: 5rem;
    font-weight: bolder;
    color: var(--white);
  }
  .games-maindetails{
    font-size: 1.2rem;
    line-height: 1.1;
    font-weight: 300;
    margin: 20px 0;
    width: 50%;
  }
  .games-gamesbtn{
    padding: 5px 20px;
    color: var(--white);
    text-align: left;
    font: bold 14px/23px Montserrat;
    background: transparent linear-gradient(180deg, #F8BA2D 0%, #FF7805 100%) 0% 0% no-repeat padding-box;
    border-radius: 43px;
    align-items: center;
    margin-top: 30px;
    width: 120px;
    
  }
  .games-cardswrapper{
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: repeat(4, 1fr) ;
    grid-gap: 10px;
    z-index: 99;
  
  } 
  .games-card{
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0 20px 20px 20px;
  }
  .games-card:nth-child(1){
    background: var(--darkpurple);
  }
  .games-card:nth-child(2){
    background: var(--red);
  }
  .games-card:nth-child(3){
    background: var(--orange);
  }
  .games-card:nth-child(4){
    background: var(--aquamarine);
  }
  .games-card:nth-child(5){
    background: var(--skyblue1);
  }
  .games-cardheader{
    width: 100px;
    height: 150px;
    border-bottom-left-radius: 50px;
    border-bottom-right-radius: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  
  .games-cardheader {
    background: var(--white);
  }
  .games-cardheader img{
    width: 70%;
  }
  .games-cardtitle{
    font-weight: bold;
    font-size: 1.2rem;
    margin: 20px 0 10px 0;
    color: var(--white);
  }
  .games-carddetails{
    font-size: .9rem;
    line-height: 1.3;
    margin-bottom: 30px;
    color: var(--gray);
  }
  .games-cardicon{
    margin-left: 90%;
    height: 18px;
    width: 18px;
    border-radius: 50%;
    box-shadow: -3px 3px 10px rgb(41, 41, 41);
  }
 
  .games-card:nth-child(1) .games-cardbtn{
    color:var(--orange);
  }
  .games-card:nth-child(2) .games-cardbtn{
    color:var(--pinkish);
  }
  .games-card:nth-child(3) .games-cardbtn{
    color:var(--greenish);
  }
  .games-card:nth-child(4) .games-cardbtn{
    color:var(--realorange);
  }
  .games-card:nth-child(5) .games-cardbtn{
    color:var(--othergreen);
  }
 @media only screen and (max-width: 800px) {
        .games-maintitle {
          font-size: 4rem;
        }
        .games-maintitle span{
          font-size: 4rem;
        }
    }
@media only screen and (max-width: 1300px){
    .games-cardswrapper{
      grid-template-columns: repeat(3, 1fr);
    }
  }
   @media only screen and (max-width: 900px){
    .games-cardswrapper{
      grid-template-columns: repeat(2, 1fr);
    }
  }
   @media only screen and (max-width: 650px){
    .games-cardswrapper{
      grid-template-columns: repeat(1, 1fr);
    }
   }
</style>