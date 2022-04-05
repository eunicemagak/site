<template>
  <div class="contact-us">
    <div class="contactnav">
      <Nav/>
    </div>
      <div class="contactuscontent">
          <div class="contactleft">
            <img class="reviews1" src="../assets/images/rmt.png" alt="" >
          </div>
          <div class="contactright">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31910.80213323222!2d36.808981!3d-1.262175!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdbd2f57b3808719a!2sRoamtech%20Solutions%20Limited!5e0!3m2!1sen!2ske!4v1647866535229!5m2!1sen!2ske" allowfullscreen="" width="1000" height="600" loading="lazy"></iframe>
          </div>
      </div>  
  </div>
</template>

<script>


export default {
 
   
    
    
  
}
 
</script>


<style>

.contactlogo {
  display: flex;
  position: relative;
  max-height: 450px;
  max-width: 500px;
  }
.contactuscontent {
  display: flex;
  justify-content: center;
  align-items: center;
}
.reviews1 {
  position: relative;
}
.contactleft{
  flex: 33%;
}
.contactright{
  flex: 67%;
}
.contactnav {
  height: 15vh;
  background:-moz-linear-gradient(88deg, rgba(27, 117, 188, 1) 0%, rgba(21, 90, 145, 1) 50%, rgba(14, 59, 94, 1) 100%); 
  background:-webkit-linear-gradient(88deg, rgba(27, 117, 188, 1) 0%, rgba(21, 90, 145, 1) 50%, rgba(14, 59, 94, 1) 100%);
  background:-o-linear-gradient(88deg, rgba(27, 117, 188, 1) 0%, rgba(21, 90, 145, 1) 50%, rgba(14, 59, 94, 1) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0E3B5E', endColorstr='#1B75BC', GradientType=0 );
  background:-ms-linear-gradient(88deg, rgba(27, 117, 188, 1) 0%, rgba(21, 90, 145, 1) 50%, rgba(14, 59, 94, 1) 100%);
  background:linear-gradient(88deg, rgba(27, 117, 188, 1) 0%, rgba(21, 90, 145, 1) 50%, rgba(14, 59, 94, 1) 100%);

}
.contactrectangle {
  height: 1vh;
  background: var(--navblue);
}

@media only screen and (max-width: 800px){
  .contactuscontent{
     display: flex;
     flex-direction: column;
  }
  .contactleft {
    width: 100%;
  }
  .contactright{
    width: 100%;
  }
  .contactright iframe{
   width: 100%;
  }
  
}
  

</style>