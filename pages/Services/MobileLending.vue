<template>
 <div class="main">
    <div class="bg-mobile">
      <div class="mobile-wrapper">
        <div class="rectangle1">
      </div>
      
      <div class="content-wrapper">
      <h1 class="content text-blue-500">Fintech <br>Solutions</h1>
      <p class="text-gray-900">Roamtech specializes in the development of <br>mobile solutions and services that help businesses <br>communicate and connect with their audiences.</p>
       </div>
    </div>
    </div>
       <div class="ml-card-wrapper">
        
        <div class="ml-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-blue-500">
                <img class="w-20 pl-7 pt-12" src="~/assets/images/senti.png" alt="">
            </div>
           <div class="ml-title">
             Senti
           </div>
           <div class="ml-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="ml-card-footer pb-8">
             <button class="shadow-lg shadow-gray-700 w-6 text-right rounded-full  text-blue-600 font-bold"> 
               <a href="https://senti.co.ke">></a></button>
           </div>
         </div>
          <div class="ml-card shadow-lg bg-gray-200">
            <div class="rounded-b-full h-48 w-28 bg-white ">
               <img class="pt-10" src="~/assets/images/loans.png" alt="">
            </div>
           <div class="ml-title">
             Business Loan
           </div>
           <div class="ml-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="ml-card-footer pb-8">
             <button class="shadow-lg shadow-gray-700 w-6 text-right rounded-full text-red-600 font-bold">
              <a href="https://senti.co.ke">></a></button>
           </div>
         </div>
          <div class="ml-card bg-white shadow-lg">
            <div class="rounded-b-full h-48 w-28 bg-blue-500">
              <img class="pt-10" src="~/assets/images/lending.png" alt="">
            </div>
           <div class="ml-title text-left ">
             Lending App
           </div>
           <div class="ml-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="ml-card-footer pb-8">
             <button class="shadow-lg shadow-gray-700 w-6 text-right rounded-full text-yellow-600 font-bold">
             <a href="https://senti.co.ke">></a></button>
           </div>
         </div>
          <div class="ml-card shadow-lg bg-gray-200">
            <div class="rounded-b-full h-48 w-28 bg-white">
              <img class="pt-10" src="~/assets/images/fintech.png" alt="">
            </div>

           <div class="ml-title">
             Fintech
           </div>
           <div class="ml-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="ml-card-footer pb-8">
             <button class="shadow-lg shadow-gray-700 rounded-full w-6 text-right text-fuchsia-600 font-bold">
            <a href="https://senti.co.ke">></a></button>
           </div>
         </div>
          <div class="ml-card shadow-lg bg-white">
            <div class="rounded-b-full h-48 w-28 bg-green-600">
              <img class="pt-10" src="~/assets/images/fintech.png" alt="">
            </div>

           <div class="ml-title">
             Fintech
           </div>
           <div class="ml-card-details">
             Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
           </div>
           <div class="ml-card-footer pb-8">
             <button class="shadow-lg shadow-gray-700 rounded-full w-6 text-right text-green-600 font-bold">
              <a href="https://senti.co.ke">></a></button>
           </div>
         </div>
         
       </div>
 </div>
</template>
<script>
import MobiImg from "assets/images/mobilelending.png";
export default {
  data() {
    return {
      image: {backgroundImage:`url(${MobiImg})`},
    };
  }
};
</script>

<style>
.bg-mobile {
 background:linear-gradient( rgba(201, 202, 202, 0.534) 100%, #F0F0F0 0%),
url('./assets/images/mobilelending.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size:contain;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;

}
.mobile-wrapper,
.content-wrapper{
   padding: 0.5rem calc((100vw - 1400px) / 2);
}
.content{
  font: normal normal 900 70px/80px Montserrat;
  text-transform: capitalize;
  width: 878px;

}
.bg-gray{
  background-color: grey;
  height:300px;
}
.ml-card-wrapper{
   padding: 0.5rem calc((100vw - 1200px) / 2);
  display: flex;
  flex-wrap: nowrap;
  width: 100%;
  height: 100%;
  overflow: scroll;
  overflow-y: hidden;
  margin-top: -100px;
  
  
}
.ml-card{
 
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  gap: 2rem;
}
.ml-card-details{
  width: 300px;
   color: var(--textgray);
  font-weight: 100;
  line-height: 1.1;
  text-align: center;
}
.ml-title{
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
  mix-blend-mode: soft-light;
  transform: rotate(10deg);
  z-index: 2;
}


</style>