<template>
 <div class="main">
    <div class="bg-gateway">
      <div class="gateway-wrapper">
      <div class="rectangle1">
      </div>
      <div class="rectangle2">
      </div>
      <div class="content-wrapper">
      <h1 class="content text-gray-50">Payment <br> Gateway</h1>
      <p class="text-gray-50">Roamtech specializes in the development of <br>mobile solutions and services that help businesses <br>communicate and connect with their audiences.</p>
       </div>
    </div>
    </div>
       <div class="pg-card-wrapper">
        
          <div class="pg-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-gray-300">
 <img class="pl-5 w-20 pt-14" src="~/assets/images/pg.svg" alt="">
            </div>
           <div class="pg-title">
             Payement Gateway
           </div>
           <div class="pg-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pg-card-footer left pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-blue-600 font-bold">
               <a href="https://play.google.com/store/apps/details?id=com.roamtech.emalipayapp&hl=swGet">Get</a></button>
           </div>
         </div>
          <div class="pg-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-gray-300">
            <img class=" pl-7 w-20 pt-14" src="~/assets/images/paykit.png" alt="">
            </div>
           <div class="pg-title">
             Paykit
           </div>
           <div class="pg-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pg-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-blue-600 font-bold">
               <a href="https://play.google.com/store/apps/details?id=com.roamtech.emalipayapp&hl=sw">Download</a></button>
           </div>
         </div>
          <div class="pg-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-gray-300">
 <img class="pl-5 w-20 pt-14" src="~/assets/images/utility.svg" alt="">
            </div>
           <div class="pg-title">
             Utility Payment
           </div>
           <div class="pg-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pg-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-red-600 font-bold"> <a href="https://emalify.com">Get</a></button>
           </div>
         </div>
          <div class="pg-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-gray-300">
 <img class="w-20 pl-5 pt-14" src="~/assets/images/airtime.svg" alt="">
            </div>

           <div class="pg-title">
             Bulk Airtime
           </div>
           <div class="pg-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pg-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-fuchsia-600 font-bold"> 
               <a href="https://emalify.com">Get</a></button>
           </div>
         </div>
          
         
       </div>
 </div>
</template>
<script>
import PaymentImg from "assets/images/gateway.png";
export default {
  data() {
    return {
      image: {backgroundImage:`url(${PaymentImg})`},
    };
  }
};
</script>

<style>
.bg-gateway {
 background: linear-gradient( rgba(0, 23, 32, 0.534) 100%, rgba(255, 32, 32, 0.5) 100%),
url('./assets/images/gateway.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;

}
.gateway-wrapper,
.content-wrapper{
   padding: 0.5rem calc((100vw - 1400px) / 2);
  
}
.content{
  font: normal normal 900 70px/80px Montserrat;
  text-transform: capitalize;
  width: 878px;

}

.pg-card-wrapper{
   padding: 0.5rem calc((100vw - 1200px) / 2);
  display: flex;
  flex-wrap: nowrap;
  width: 100%;
  height: 100%;
  overflow: scroll;
  overflow-y: hidden;
  margin-top: -100px;
  
  
  
}
.pg-card{
 
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  gap: 2rem;
  z-index: 99;
}
.pg-card-details{
  width: 300px;
   color: var(--textgray);
  font-weight: 100;
  line-height: 1.1;
}
.pg-title{
    font-size: 1.2rem;
  font-weight: 600;
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
.rectangle2 {
  width: 200px;
  height: 800px;
  background: var(--white);
  position: absolute;
  border-radius: 100px;
  top:  50px;
  right: 200px;
  mix-blend-mode: overlay;
  transform: rotate(10deg);
  z-index: 2;
}

</style>