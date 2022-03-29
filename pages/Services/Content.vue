<template>

    <div class="bg-local">
      <div class="rectangle1">
      </div>
      <div class="rectangle">
      </div>
      <div class="content-wrapper">
      <h1 class="contentt"><span class="enjoytext">Enjoy</span> Content You Love</h1>
      <button class="enjoy">LETS ENJOY</button>
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
.bg-local {
  background: linear-gradient( rgba(0, 23, 32, 0.5) 100%, rgba(255, 32, 32, 0.5) 100%),
url('./assets/images/content.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  
  /* width: 1920px; */
}
.content-wrapper{
  align-items: center;
}
.content-title {
  text-align: left;
  font: normal normal 900 70px/80px Montserrat;
  letter-spacing: 0px;
  text-transform: capitalize;
  left: 182px;
  width: 878px;
  color: var(--orange);
}
/* .contentt {
  flex: 1;
  display: flex;
  text-align: center;
  flex-direction: row;
  padding-top: 190px;
  padding-left: 162px;
  padding-right: 860px;
} */
.contentt{
  color: var(--white);
  font: normal normal 900 70px/80px Montserrat;
  width: 600px;
  margin-left: 15px;
}
.enjoytext{
  color: var(--orange);
  font: normal normal 900 70px/80px Montserrat;
}
.content-text {
  font: normal normal 900 70px/80px Montserrat;
  letter-spacing: 0px;
  text-transform: capitalize;
  text-align: left;
  color: var(--white);
  margin-left: 10px;
  padding-top: 10px;
  /* text-align: left; */
}
.contentword {
  text-align: left;
  font: normal normal 700 60px/80px Montserrat;
  letter-spacing: 0px;
  text-transform: capitalize;
  padding-left: 162px;
  color: var(--white);

}
.enjoy {
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
.rectangle1{
  width: 200px;
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
.rectangle {
  width: 200px;
  height: 800px;
  background: var(--orange);
  position: absolute;
  border-radius: 100px;
  top:  50px;
  right: 200px;
  mix-blend-mode: multiply;
  transform: rotate(10deg);
  z-index: 2;
}

</style>