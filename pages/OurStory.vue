
  <!-- 
    Our story, 
      company history and achievents over the years. 
      Company Vision and Mission statement
      Core values and priciples
   -->

<template>
<div>
  <div class="about">
    <Nav/>
    <div class="about-wrapper">
      <div>
        <h1>ABOUT US</h1>
        <p>
         We are driven by passion and hard work, we help our clients to build stronger more agile and innovative businesses that deliver great customer experiences online. Our strength lies in listening to client challenges and ambitions and creating solutions that serve their needs. We have invested in the capabilities and team to ensure that roamtech is well positioned to deliver.
        </p>
      </div>
    </div>
    <div class="story-cards">
      <!-- Company vision statement  -->
      <div class="story-card">
        <h1>Our Vision</h1>
        <p>To be a welcome guest in every African Home</p>
      </div>
      <!-- Company mission statement  -->
      <div  class="story-card">
        <h1>Our Mission</h1>
        <p>To deliver innovative, simple to use digital & mobile solutions that help our customers enjoy life!</p>
      </div>
      <!-- Company values statement  -->
      <div  class="story-card">
        <h1>Our Values</h1>
        <p>Dependable | Transparent | Listening</p>
      </div>
    </div>
  </div>
    <div class="journey">
      <!-- company history and achievents over the years.   -->
      <h1>OUR JOURNEY <span>OVER THE YEARS</span></h1>
      <div class="journey-wrapper mobile">
        <img class="journey-img" src="../assets/images/2011j.png"/>
        <img class="journey-img" src="../assets/images/2012j.png"/>
        <img class="journey-img" src="../assets/images/2013j.png"/>
        <img class="journey-img" src="../assets/images/2014j.png"/>
        <img class="journey-img" src="../assets/images/2015j.png"/>
        <img class="journey-img" src="../assets/images/2016j.png"/>
        <img class="journey-img" src="../assets/images/2017j.png"/>
        <img class="journey-img" src="../assets/images/2018j.png"/>
        <img class="journey-img" src="../assets/images/2019j.png"/>
        <img class="journey-img" src="../assets/images/2020j.png"/>
        <img class="journey-img" src="../assets/images/2021j.png"/>
        <img class="journey-img" src="../assets/images/2022j.png"/>
      </div>
    </div>
    </div>
</template>

<script>
export default {

}
</script>

<style>
.about{
  background: url('./assets/images/aboutbg.jpg'), var(--black);
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 70vh;
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
  padding: 15rem 0 5rem 0;
}
.journey-wrapper{
  display: flex;
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  overflow: scroll;
}
.journey-img{
  width: 90%;
  max-width: 250px;
}

.journey-wrapper {
  display: flex;
  align-items: center;
  overflow: scroll;
  margin: 0 auto;
  padding: 0;
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
    margin: 150px 0; 
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
@media only screen and (max-width: 800px) {
  .about-wrapper{
    text-align: center;
  padding: 15rem 10px 5rem 10px;
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
    width: 200px;
    padding: 5px;
  }
  .journey{
    text-align: center;
    margin: 100px 0 0 0; 
  }
}
</style>