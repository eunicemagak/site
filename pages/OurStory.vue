<template>
<div>
  <div class="about">
  <Header/>
    <div class="about-wrapper">
      <div>
        <h1>ABOUT US</h1>
        <p>
          Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam dolor sit amet, 
          consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam dolor sit amet, consectetuer adipiscing elit, 
          sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet 
          dolore magna aliquam dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam dolor sit amet, 
          consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam
        </p>
      </div>
    </div>
    <div class="story-cards">
      <div class="story-card">
        <h1>Our Vision</h1>
        <p>To be your preferred lifelong digital partner.</p>
      </div>
      <div  class="story-card">
        <h1>Our Mission</h1>
        <p>To deliver solutions where customers interact to get best value</p>
      </div>
      <div  class="story-card">
        <h1>Our Values</h1>
        <p>Trust | Integrity | Listen</p>
      </div>
    </div>
  </div>
    <div class="journey">
      <h1>OUR JOURNEY <span>OVER THE YEARS</span></h1>
      <img src="../assets/images/journey.png" alt="" class="journey-img">
    </div>
    </div>
</template>

<script>
export default {

}
</script>

<style>
.about{
  background: url('./assets/images/aboutbg.png'), var(--black);
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 80vh;
}
.about:after{
  content: "";
  position: absolute;
    width: 100%;
    height: 100%;
  background: var(--black);
  top: 0;
  left: 0;
  opacity: .9;
  z-index: 1;
}
.about-wrapper{
  padding: 50px 0;
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
  color: var(--white);
  z-index: 2;
}
.about-wrapper h1{
  font-size: 2rem;
  font-weight: bold;
  margin-bottom: 30px;
}
.about-wrapper p{
  font-size: 1.2rem;
}
  .story-cards{
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-evenly;
    align-items: flex-start;
    gap: 2rem;
    z-index: 2;
    margin-top: -100px;
  }
  .story-card{
    text-align: center;
    background-color: #ffffff;
    box-shadow: 3px;
    width: 450px;
    padding: 20px 50px;
    margin-top: 100px;
    height: 150px;
    border-radius: 10px;
  box-shadow: 1px 3px 3px rgba(48, 48, 48, .5);
  }
  .story-card h1{
    color: var(--navblue);
    font-size: 1.5rem;
    font-weight: bold;
  }
  .story-card p{
    color: var(--cardblack);
    font-size: 1rem;
  }
  .journey{
    text-align: center;
    margin: 70px 0 0 0; 
  }
  .journey h1{
   font-size: 2.5rem;
   font-weight: bold;
  }
  .journey span{
    font-size: 2.5rem;
    color: var(--blackish);
    font-weight: bold;
  }
  .journey-img{
    width: 100%;
    margin-top: -100px;
  } 
@media only screen and (max-width: 800px) {
  .about{
    padding-top: 20px;
  }
  .about-wrapper{
    text-align: center;
    padding: 20px;
  }
  .about-wrapper p{
    font-size: .9rem;
  }
  .story-cards{
    justify-content: flex-start;
    align-items: center;
    width: 98%;
    overflow-x: scroll;
    gap: 5px;
  }
  .story-card p,
  .story-card{
    width: 250px;
    padding: 5px;
  }
  .journey{
    text-align: center;
    margin: 150px 0 0 0; 
  }
  .journey-img{
    margin-top: 0;
  } 
}
</style>