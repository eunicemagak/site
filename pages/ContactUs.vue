  <!-- 
    Contact Us 
      Company Contact Informaation
      Google map location pin
   -->
<template>
  <div class="contact-us">
    <div class="contactnav">
      <Nav/>
    </div>
      <div class="contactuscontent">
          <!-- <div class="contactleft">
            <img class="reviews1" src="../assets/images/rmt.png" alt="" >
          </div> -->
          <div class="contactright">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8411778738096!2d36.80693341426497!3d-1.268086499075083!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f177c03c8abb1%3A0x452fc1c578b64c20!2sRoamtech%20Solutions%20Limited!5e0!3m2!1sen!2ske!4v1651654076359!5m2!1sen!2ske"  allow="geolocation" width="100%" height="800px" frameborder="0" scrolling="no" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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
  flex: 25%;
}
.contactright{
  flex: 75%;
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
    display: none;
  }
  .contactright{
    width: 100%;
  }
  .contactright iframe{
   width: 100%;
  }
  .contactnav{
  height: 8vh;
  }
}
  

</style>