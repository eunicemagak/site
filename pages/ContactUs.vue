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
            <iframe src="https://my.atlistmaps.com/map/588fa6b8-a5b6-430d-9d18-a4a17bd4b5ae?share=true" allow="geolocation" width="100%" height="800px" frameborder="0" scrolling="no" allowfullscreen></iframe>
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