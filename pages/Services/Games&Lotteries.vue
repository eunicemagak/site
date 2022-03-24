<template>
  <div class="bg-games">
    <div class="rectanglegames1">
      </div>
      <div class="rectanglegames">
      </div>
      <div class="content-wrappergm">
      <h1 class="contenttgm"><span class="gametext">Best Games</span> Solution</h1>
      <button class="games-lot">LETS PLAY</button>
      </div>


      <div class="games-card-wrapper">
        <div class="games-card-content shadow-lg" id="games-purple">
          <div class="games-rectangle">
            <img class="gamesimages-logo" src="~/assets/images/cheza.png" alt="">
          </div>
          <div class="games-card-footer pb-5 i" >
            <h6 class="games-title">Cheza Chini</h6>
            <p class="games-card-details"> Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony </p>
          </div>
          <img class="cheza"  src="~/assets/images/lightblueright-arrow.png" href="" alt="">
        </div>
        <div class="games-card-content shadow-lg" id="games-red">
          <div class="games-rectangle">
            <img  class="gamesimages-logo" src="~/assets/images/bingwa.png" alt="">
          </div>
          <div class="games-card-footer pb-5" >
            <h6 class="games-title">BINGWA GAMES</h6>
            <p class="games-card-details"> Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony </p>
          </div>
           <img class="cheza"  src="~/assets/images/lightpinkright-arrow.png" alt="">
        </div>
        <div class="games-card-content shadow-lg" id="games-orange">
          <div class="games-rectangle">
            <img   class="gamesimages-logo" src="~/assets/images/anza.png" alt="">
          </div>
          <div class="games-card-footer pb-5" >
            <h6 class="games-title">ANZA GAMES</h6>
            <p class="games-card-details"> Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony </p>
          </div>
          <img class="cheza"  src="~/assets/images/lightpinkright-arrow.png" alt="">
        </div>
        <div class="games-card-content shadow-lg" id="games-aquamarine">
          <div class="games-rectangle">

          </div>
          <div class="games-card-footer pb-5">
            <h6 class="games-title">PESAWHEEL</h6>
            <p class="games-card-details"> Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony </p>
          </div>
           <img class="cheza"  src="~/assets/images/aquaright-arrow.png" alt="">
        </div>
        <div class="games-card-content shadow-lg" id="games-skyblue">
          <div class="games-rectangle">

          </div>
          <div class="games-card-footer pb-5">
            <h6 class="games-title">GAMES GAMES</h6>
            <p class="games-card-details"> Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony </p>
          </div>
           <img class="cheza"  src="~/assets/images/lightblueright-arrow.png" alt="">
        </div>
      </div>
  </div>
</template>

<script>

import gamesImg from "assets/images/games.png";
export default {
  data() {
    return {
      image: {backgroundImage:`url(${gamesImg})`},
    };
  }
};

</script>

<style>
.bg-games {
  background: linear-gradient( rgba(0, 23, 32, 0.5) 100%, rgba(255, 32, 32, 0.5) 100%),
url('./assets/images/games.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  display: flex;
  padding-top: 100px;
  padding-bottom: 200px;
  padding-left: 15px;
  padding-right: 15px;
  flex-direction: column;
  justify-content: center;

}
.rectanglegames1{
  width: 150px;
  height: 800px;
  background: var(--white);
  position: absolute;
  border-radius: 100px;
  top:  -400px;
  right: 370px;
  mix-blend-mode: overlay;
  transform: rotate(10deg);
  z-index: 2;
}
.rectanglegames {
  width: 150px;
  height: 700px;
  background: var(--white);
  position: absolute;
  border-radius: 100px;
  top:  50px;
  right: 270px;
  mix-blend-mode: soft-light;
  transform: rotate(10deg);
  z-index: 2;
}
.content-wrappergm{
  align-items: center;
}
.contenttgm{
  color: var(--white);
  font: normal normal 900 70px/80px Montserrat;
  width: 600px;
  margin-top: 30px;
}
.gametext{
  color: var(--orange);
  font: normal normal 900 70px/80px Montserrat;
}
.games-lot {
  padding: 5px 20px;
  color: var(--white);
  text-align: left;
  font: bold 14px/23px Montserrat;
  background: transparent linear-gradient(180deg, #F8BA2D 0%, #FF7805 100%) 0% 0% no-repeat padding-box;
  border-radius: 43px;
  align-items: center;
  margin-top: 30px;
  margin-bottom: 100px;
  z-index: 3;
}
.games-card-wrapper{
  display: flex;
  gap: 1px;
  width: 85%;
  overflow-y: hidden;
  overflow-x: scroll;
  z-index: 200;
}
.games-card-content{
  display: flex;
  flex-direction: column;
  text-align: left;
  align-items: center;
  padding: 0 45px 10px 45px;
  
}
.cheza {
  height: 18px;
  width: 18px;
  margin-left: 200px;
}

.games-card-details{
  color: var(--white);
  font-weight: 300;
  line-height: 1;
  font-size: 11px;
}
.games-title{
   font-size: 24px/26px ;
   font-weight: 800;
   color: var(--white); 
}
#games-purple {
  background: var(--purple);
}
#games-red {
  background: var(--red);
}
#games-orange {
  background: var(--orange);
}
#games-aquamarine {
  background: var(--aquamarine);
}
#games-skyblue {
  background: var(--skyblue);
}
.games-rectangle {
  width: 130px;
  height: 200px;
  border-bottom-left-radius: 65px;
  border-bottom-right-radius: 65px;
  background: var(--white);
  display: flex;
  justify-content: center;
  align-items: center;
}
.gamesimages-logo {
  max-height: 100px;
  max-width: 100px;
}

</style>