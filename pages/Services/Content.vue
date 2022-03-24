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
    
      <div class="content-card-wrapper">
          <div class="card-content shadow-lg  ">
            <div class="bg-img">
            <img src="~/assets/images/content1.png" alt="">
            </div>
           <div class="content-card-footer  pb-8">
             <div class="content-purple">
               <img class="purple"  src="~/assets/images/purpleright-arrow.png" alt="">
             </div>
             <h6 class="title">INFORTAINMENT</h6>
             <p class="content-card-details"> Subscription Services</p>   
           </div>
         </div>
          <div class="card-content shadow-lg ">
           <div class="bg-img">
            <img src="~/assets/images/content2.png" alt=""> 
           </div>
           <div class="content-card-footer pb-8">
             <div class="content-red">
               <img class="red"  src="~/assets/images/redright-arrow(2).png" alt=""> 
             </div>
             <h6 class="title">QUOTES</h6>
             <p class="content-card-details"> Love | Bible | Quran | inspiration</p>
           </div>
         </div>
          <div class="card-content shadow-lg">
           <div class="bg-img">
             <img src="~/assets/images/content3.png" alt="">
           </div>
           <div class="content-card-footer pb-8">
             <div class="content-blue">
                <img class="blue"  src="~/assets/images/blueright-arrow(3).png" alt=""> 
             </div>
             <h6 class="title"> BONYEZA</h6>
             <p class="content-card-details"> Music | Bonyeza699 | Videos</p>
           </div>
         </div>
          <div class="card-content shadow-lg">
              <div class="bg-img">
             <img src="~/assets/images/content4.png" alt="">
           </div>
           <div class="content-card-footer pb-8">
              <div class="content-purple">
               <img class="purple"  src="~/assets/images/greenright-arrow.png" alt="">
             </div>
             <h6 class="title"> MY SKIZA</h6>
             <p class="content-card-details"> Music | Bonyeza699 | Videos</p>
            
           </div>
         </div>
         </div>
        </div>
</template>

<script>
import contentImg from "assets/images/content.png";
import Second from 'assets/images/content1.png';
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
  padding-top: 100px;
  padding-bottom: 200px;
  padding-left: 15px;
  padding-right: 15px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  
}
.content-wrapper{
  align-items: center;
  
}
.content-title {
  text-align: left;
  font: normal normal 900 70px/80px ;
  letter-spacing: 0px;
  text-transform: capitalize;
  left: 182px;
  width: 878px;
  color: var(--orange);
}

.contentt{
  color: var(--white);
  font: normal normal 900 70px/80px Montserrat;
  width: 600px;
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
  margin-top: 60px;
  margin-bottom: 100px;
  z-index: 3;
}
.rectangle1{
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
.purple {
  height: 15px;
  width: 15px;
}
.rectangle {
  width: 150px;
  height: 800px;
  background: var(--orange);
  position: absolute;
  border-radius: 100px;
  top:  50px;
  right: 260px;
  mix-blend-mode: multiply;
  transform: rotate(10deg);
  z-index: 2;
}

.content-card-wrapper{
  display: flex;
  gap: 1px;
  width: 90%;
  overflow-y: hidden;
  overflow-x: scroll;
  z-index: 10;
}
.card-content{
   display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  width: 300px;
}
.bg-img{
  width: 310px;
  z-index: 10;
}
.bg-img img{
  width: 100%;
}
.content-card-footer{
  padding-top: 100px;
  margin-top: -100px;
  width: 100%;
  background: var(--white);
}
.content-card-details{
  color: var(--textgray);
  font-weight: 300;
  line-height: 1.1;
}
.title{
   font-size: 24px/26px ;
   font-weight: 800; 
}
.content-purple {
  float: right;
  margin-right: 10px;
}
.red {
  height: 15px;
  width: 15px;
}
.content-red {
  float: right;
  margin-right: 10px;
  margin-left: 128px;
}
.blue {
  height: 15px;
  width: 15px;
}
.content-blue {
  float: right;
  margin-right: 10px;
  margin-left: 95px;
}


</style>