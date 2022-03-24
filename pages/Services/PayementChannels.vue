<template>
 <div class="main">
    <div class="bg-payment">
      <div class="payment-wrapper">
      <div class="rectangle1">
      </div>
      <div class="rectangle2">
      </div>
      <div class="content-wrapper">
      <h1 class="content text-gray-50">Payment <br> Channels</h1>
      <p class="text-gray-50">Roamtech specializes in the development of <br>mobile solutions and services that help businesses <br>communicate and connect with their audiences.</p>
       </div>
      </div>
   </div>
   <div class="pc-card-wrapper">
        
          <div class="pc-card bg-white shadow-lg">
             <div class="rounded-b-full h-48 w-28 bg-red-400">
               <img class="pr-2 pt-10" src="~/assets/images/short.svg" alt="">
            </div>
           <div class="pc-title">
             Short-Code
           </div>
           <div class="pc-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pc-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-36 text-red-400 font-bold">
               <a href="https://emalify.com">Get Short Code</a></button>
           </div>
         </div>
          <div class="pc-card bg-white shadow-lg">
             <div class="rounded-b-full h-48 w-28 bg-yellow-300">
               <img class="pl-8 pt-12 w-20" src="~/assets/images/USSD.svg" alt="">
            </div>
           <div class="pc-title">
             USSD Codes
           </div>
           <div class="pc-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pc-card-footer pb-8">
             <button class=" shadow-lg shadow-gray-400 rounded-full w-28 text-yellow-400 font-bold" >
               <a href="https://emalify.com/ussd">
               Get USSD</a></button>
           </div>
         </div>
           <div class="pc-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-blue-300">
              <img class="pl-9 pt-8 w-20" src="~/assets/images/mobiapp.svg" alt="">
            </div>
           <div class="pc-title">
             Mobile App
           </div>
           <div class="pc-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pc-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-blue-400 font-bold">            
               <a href="https://emalify.com">Discover</a></button>
           </div>
         </div>
          <div class="pc-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-blue-700">
              <img class="pl-7 pt-10 w-20" src="~/assets/images/message.svg" alt="">
            </div>
           <div class="pc-title">
             Bulk Airtime
           </div>
           <div class="pc-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pc-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-fuchsia-600 font-bold">            
               <a href="https://emalify.com">Get</a></button>
           </div>
         </div>
          <div class="pc-card bg-white shadow-lg">
             <div class="rounded-b-full h-48 w-28 bg-orange-400">
               <img class=" pl-7 pt-10 w-20" src="~/assets/images/music.svg" alt="">
            </div>
           <div class="pc-title">
             API Intergration
           </div>
           <div class="pc-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pc-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-green-600 font-bold">
                <a href="https://emalify.com">Get</a></button>
           </div>
         </div>
         <div class="pc-card bg-white shadow-lg">
             <div class="rounded-b-full h-48 w-28 bg-green-600">
               <img class="w-20 pl-5 pt-7" src="~/assets/images/chat.svg" alt="">
            </div>
           <div class="pc-title">
             API Intergration
           </div>
           <div class="pc-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pc-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-green-600 font-bold">Get</button>
           </div>
         </div>
         <div class="pc-card bg-white shadow-lg">
             <div class="rounded-b-full h-48 w-28 bg-fuchsia-600">
               <img class="w-20 pl-5 pt-7" src="~/assets/images/chat.svg" alt="">
            </div>
           <div class="pc-title">
             API Intergration
           </div>
           <div class="pc-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="pc-card-footer pb-8">
             <button class="shadow-lg shadow-gray-400 rounded-full w-28 text-green-600 font-bold">Get</button>
           </div>
         </div>
   </div>
 </div>
</template>
<script>
import PaymentImg from "assets/images/payment.png";
export default {
  data() {
    return {
      image: {backgroundImage:`url(${PaymentImg})`},
    };
  }
};
</script>

<style>
.bg-payment {
 background: linear-gradient( rgba(0, 23, 32, 0.5) 100%, rgba(255, 32, 32, 0.5) 100%),
url('./assets/images/payment.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;

}
.content-wrapper{
   padding: 0.5rem calc((100vw - 1250px) / 2);
}
.content{
  font: normal normal 900 70px/80px Montserrat;
  text-transform: capitalize;
  width: 878px;

}
.pc-card-wrapper{
   padding: 0.5rem calc((100vw - 1200px) / 2);
  display: flex;
  flex-wrap: nowrap;
  width: 100%;
  height: 100%;
  overflow: scroll;
  overflow-y: hidden;
  margin-top: -100px;
  
}
.pc-card{
 
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  gap: 2rem;
  z-index: 99;
}
.pc-card-details{
  width: 300px;
   color: var(--textgray);
  font-weight: 100;
  line-height: 1.1;
}
.pc-title{
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