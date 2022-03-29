<template>
  <div class="contact us">

    <div class="contactuscontent">
      <div class="contactleft">
        <img class='contactlogo' src="../assets/images/logoblue.png" alt="">
        <img class="reviews" src="../assets/images/rmt.png" alt="" >
      </div>
    <div class="contactright">
      <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31910.80213323222!2d36.808981!3d-1.262175!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdbd2f57b3808719a!2sRoamtech%20Solutions%20Limited!5e0!3m2!1sen!2ske!4v1647750790522!5m2!1sen!2ske" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       -->
       <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31910.80213323222!2d36.808981!3d-1.262175!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdbd2f57b3808719a!2sRoamtech%20Solutions%20Limited!5e0!3m2!1sen!2ske!4v1647866535229!5m2!1sen!2ske" width="1000" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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
  justify-content: center;
  margin-left: 50px; 
  position: relative;
  }
  .contactlogo::after{
    content: "";
    height: 50px;
    width: 100%;
    top: 50px;
    left: 0;
    position: absolute;
    background-color: blue;
  }
.contactuscontent {
  /* display: grid; */
  display: flex;
  grid-template-columns: repeat(4, 1fr);
}
.contactleft {
  grid-column-start: 1;
  grid-column-end: 4;
  grid-row-gap: 10px;
  }
.reviews {
  height: 400;
}
.contactright {
  height: 300px;
  width: 500;
}
.rectangle {
  background: var(--blue);
  height: 200px;
}

</style>