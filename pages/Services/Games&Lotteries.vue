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
  </div>
</template>

<script>

import contentImg from "assets/images/games.png";
export default {
  data() {
    return {
      image: {backgroundImage:`url(${contentImg})`},
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
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;

}
.rectanglegames1{
  width: 150px;
  height: 800px;
  background: var(--white);
  position: absolute;
  border-radius: 100px;
  top:  -300px;
  right: 370px;
  mix-blend-mode: overlay;
  transform: rotate(10deg);
  z-index: 2;
}
.rectanglegames {
  width: 150px;
  height: 800px;
  background: var(--white);
  position: absolute;
  border-radius: 100px;
  top:  50px;
  right: 260px;
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
  margin-left: 15px;
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
  margin-left: 15px;
  margin-top: 60px;
  z-index: 3;
}

</style>