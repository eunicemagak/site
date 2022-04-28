<template>
<div>
  <div class="hero">
    <div class="gradient"></div>
    <Header/>
      <div class="overlay"></div>
      <div class="overlay2"></div>
    <div class="hero-wrapper">
      <h1 class="main-txt">
        Grow Your Business
      </h1>
      <p class="main-info">
        We build mobile technology solutions that help connect your businesses to your customers anywhere in the world.
      </p>
    </div>
  </div>
  <div class="chooseus">
    <h1 class="title">WE HAVE THE EXPERTISE</h1>
    <p class="choose-details">With over 10 years of experience, we know how to simplify technology to deliver innovative solutions that create great value for our customers.</p>
    <div class="card-wrapper">
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
            <img src="../assets/images/prize.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          QUALITY DELIVERED ON TIME
        </h4>
        <p class="card-details">
           We believe in keeping our word and delivering solutions on time, within budget and meeting your specifications
        </p>
      </div>
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
            <img src="../assets/images/think.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          INNOVATIVE SOLUTIONS
        </h4>
        <p class="card-details">
          Our diverse team of experts is always looking for innovative new ways to solve our customers challenges.       
        </p>
      </div>
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
              <img src="../assets/images/ip.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          VALUABLE KNOWLEDGE
        </h4>
        <p class="card-details">
          We have built an industry leading bank of IP that enables us to stay ahead of the competition
        </p>
      </div>
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
            <img src="../assets/images/box.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          SOLUTIONS THAT SCALE
        </h4>
        <p class="card-details">
          Our solutions match with any size of business
        </p>
      </div>
    </div>
  </div>
  <div class="solutions" id="solutions">
    <h1 class="title">OUR SOLUTIONS</h1>
    <div class="solutions-wrapper">
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/gateway.png" alt="">
        </div>
        <h4 class="solution-title">
          PAYMENT GATEWAY
        </h4>
        <p class="solution-details">
          With our payment integration you can make mobile payments to various utilities across the region, from Electicity tokens, Water bills to Airtime and Data
        </p>
          <nuxt-link to="/Services/paymentGateway"  class="get-solution">
            LEARN MORE
          </nuxt-link>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/sms.png" alt="">
        </div>
        <h4 class="solution-title">
          SMS SOLUTIONS
        </h4>
        <p class="solution-details">
          With our robust access to telco infrastructure across Africa we can gurantee delivery and value on SMS, USSD, Voice and VAS solutions
        </p>
          <nuxt-link to="/Services/SMSSolutions"  class="get-solution">
            LEARN MORE
          </nuxt-link>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/lending.png" alt="">
        </div>
        <h4 class="solution-title">
          MOBILE LENDING
        </h4>
        <p class="solution-details">
          We deliver mobile lending solutions to thousands of happy customers in several countries, giving more people acccess to finance to power their lives
        </p>
          <nuxt-link to="/Services/MobileLending"  class="get-solution">
            LEARN MORE
          </nuxt-link>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/content.png" alt="">
        </div>
        <h4 class="solution-title">
          CONTENT
        </h4>
        <p class="solution-details">
          We are experts at delivering entertainment via mobile, from Ringtones, Popular music, Video on demand, Inspiration and Religious content
        </p>
          <nuxt-link to="/Services/Content"  class="get-solution">
            LEARN MORE
          </nuxt-link>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/games.png" alt="">
        </div>
        <h4 class="solution-title">
          GAMES & LOTTERIES
        </h4>
        <p class="solution-details">
          We are innovators on Mobile games and Lotteries
        </p>
          <nuxt-link to="/Services/Games&Lotteries"  class="get-solution">
            LEARN MORE
          </nuxt-link>
      </div>
    </div>
  </div>
  <!-- <div class="partners">
        <h1 class="title">
          OUR KEY PARTNERS
        </h1>
        <div class="partner-wrapper">
          <div class="partner-logo">
            <img src="../assets/images/safaricom.png"/>
          </div>
          <div class="partner-logo">
            <img src="../assets/images/telkom.png"/>
          </div>
          <div class="partner-logo">
            <img src="../assets/images/airtel.png"/>
          </div>
        </div>
  </div>
  <div class="clients">
    <h1 class="title">
      OUR MAJOR CLIENTS
    </h1>
    <div class="clients-wrapper">
        <img src="../assets/images/LOGOS.png" alt="" class="client">
        <img src="../assets/images/LOGOS 2.png" alt="" class="client">
    </div>
  </div> -->
  <div class="pandc">
    <div class="partners">
      <h1 class="title">
        Partners
      </h1>
      <div class="partners-wrapper">
        <img src="../assets/images/safaricom.png" class="partner-logo">
        <img src="../assets/images/airtel.png" alt="" class="partner-logo">
        <img src="../assets/images/visa.png" alt="" class="partner-logo">
        <img src="../assets/images/telkom.png" alt="" class="partner-logo">
      </div>
    </div>
    <div class="clients">
      <h1 class="title">
        Clients
      </h1>
      <div class="clients-wrapper">
        <img src="../assets/images/sbm.png" alt="" class="partner-logo">
        <img src="../assets/images/betika.png" alt="" class="partner-logo">
        <img src="../assets/images/limuru.png" alt="" class="partner-logo">
        <img src="../assets/images/nairobiwomen.png" alt="" class="partner-logo">
        <img src="../assets/images/startimes.png" alt="" class="partner-logo">
        <img src="../assets/images/sabis.png" alt="" class="partner-logo">
        <img src="../assets/images/ncib.png" alt="" class="partner-logo">
        <img src="../assets/images/tavevo.png" alt="" class="partner-logo">
        <img src="../assets/images/defense.png" alt="" class="partner-logo">
        <img src="../assets/images/kentours.png" alt="" class="partner-logo">
        <img src="../assets/images/hava.png" alt="" class="partner-logo">
        <img src="../assets/images/avane.png" alt="" class="partner-logo">
        <img src="../assets/images/alladin.png" alt="" class="partner-logo">
        <img src="../assets/images/ira.png" alt="" class="partner-logo">
        <img src="../assets/images/corporate.png" alt="" class="partner-logo">
      </div>
    </div>
    <div class="white-logo">
    <img src="../assets/images/logowhite.png" class="white-logo"/>
    </div>
  </div>
   <div class="reviews">
    <h1 class="title">
      WHAT OUR CUSTOMERS ARE SAYING
    </h1>
    <p class="reviews-details">
      We have clients of all sizes in different sectors of the economy
    </p>
   <VueSlickCarousel  v-bind="settings" class="reviews-wrapper">
      <div class="review">
        <div class="review-info">
          <h1>"</h1>
          I have used this platform for over 2 years. Emalify offers unparalleled and personal customer service, Best price in the market and best support ever. So far Geecko is very very comfortable with the services offered. Great work Greater team.
        </div>
        <div class="reviewer">
          <img src="../assets/images/geecko.jpeg" id="reviewer-img"/>
          <h4 class="reviewer-name">
            Geecko Group Holdings LTD
          </h4>
        </div>
      </div>
      <div class="review">
        <div class="review-info">
          <h1>"</h1>
          Roamtech have been a partner of ours for the past 8 years, through this period, they have been a reliable partner, assisting us to manage services that are really not a core part of our business. We are confident that they will continue to offer us top notch IT consulting services.
        </div>
        <div class="reviewer">
          <img src="../assets/images/ncib.png" id="reviewer-img"/>
          <h4 class="reviewer-name">
            Nile Capital
          </h4>
        </div>
      </div>
      
    </VueSlickCarousel>
   </div>
  </div>
</template>

<script>
import Header from '~/components/Header.vue';
  import VueSlickCarousel from 'vue-slick-carousel'
  import 'vue-slick-carousel/dist/vue-slick-carousel.css'
  // optional style for arrows & dots
  import 'vue-slick-carousel/dist/vue-slick-carousel-theme.css'

export default {
  name: 'IndexPage',
  components: {
    Header,
    VueSlickCarousel ,
  },
  data() {
    return{
      settings: {
          "infinite": true,
          "initialSlide": 1 ,
          "slidesToScroll": 1,
          "swipeToSlide": true,
          "autoplay": true,
          "autoplaySpeed": 4000,
          "centerMode": true,
          "centerPadding": "20px",
          "focusOnSelect": true,
          "infinite": true,
          "slidesToShow": 3,
          "speed": 500,
          "pauseOnHover": false,
          "responsive":[
            {
              breakpoint: 1024,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: true,
              }
            },
            {
              breakpoint: 800,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 500,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            },
          ]
        }
      }
    }
  }


</script>
<style>
.hero{
  background: url('./assets/images/main.jpg');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  height: 88vh;
}
.gradient{ 
  background: rgb(0,0,0);
  background: linear-gradient(to top right, rgba(0,0,0,.6) 0%, rgba(0,0,0,0) 100%); 
  position: absolute;
  top:0;
  left: 0;
  width: 100%;
  height: 100%;
}
.hero-wrapper{
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  color: var(--white);
  padding: 15rem 0 5rem 0;
}
.overlay,
.overlay2{
  width: 200px;
  height: 600px;
  border-radius: 200px;
  background: var(--white);
  position: absolute;
  z-index: 2;
  overflow: visible;
}
.overlay{
  top: -100px;
  right: 250px;
  transform: rotate(9deg);
  mix-blend-mode: overlay;
  opacity: 40%;
}
.overlay2{
  top: 160px;
  right: 520px;
  transform: rotate(9deg);
  mix-blend-mode: overlay;
  opacity: 40%;
}
.main-txt{
  font-size: 6rem;
  line-height: 1;
  width: 50%;
  font-weight: 900;
}
.main-info{
  margin: 20px 0;
  font-size: 1.2rem;
  width: 30%;
}
.engage{
  width: 150px !important;
  padding: 8px 20px;
  color: var(--white);
  background-color: var(--red);
  border-radius: 24px;
  align-items: center;
  font-weight: 600;
}
.chooseus{
  background: var(--gray);
  width: 100%;
  margin: 0 auto;
  padding: 0 calc((100vw - 1200px)/2);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.title{
  color: var(--black);
  font-weight: 800;font-size: 2rem;
  padding: 15px;
}
.choose-details{
  font-size: 1.2rem;
  width: 50%;
  text-align: center;
  font-weight: 300;
}
.solutions-wrapper{
  margin-top: 50px;
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  height: 100%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 50px;
  justify-content: center;
  }
.card-wrapper{
  width: 90%;
  margin: 50px auto;
  height: 100%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 2rem;
}
.card{
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  gap: 1rem;
}
.card-img{
  width: 150px;
  height: 150px;
  background: linear-gradient(to bottom, var(--navblue), var(--darkerblue), var(--darkblue));
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.card-bg{
  width: 120px;
  height: 120px;
  background: var(--white);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.service-icons{
  width: 50%;
}
.solution-title,
.card-title{
  font-size: 1.2rem;
  font-weight: 600;
}
.solution-details{
  color: var(--textgray);
  font-weight: 100;
  line-height: 1.1;
  padding: 10px;
  text-align: left;
  }

.card-details{
  color: var(--textgray);
  font-weight: 100;
  line-height: 1.1;
  width: 250px;
}
.solutions{
  background: var(--white);
  width: 100%;
  margin: 0 auto;
  padding: 2rem 0;  
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  z-index: 99;
}
.solution{
  background: var(--cardgray);
  border-radius: 10px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 5px;
}
.get-solution{
  text-align: center;
  background: var(--navblue);
  color: var(--white);
  padding: 5px 10px;
  border-radius: 4px;
  font-weight: bold;
  font-size: .8rem;
  margin-bottom: 10px;
}
.get-solution:hover,
.get-solution:focus{
  background: var(--active);
}
.clients,
.partners{
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.partners-wrapper,
.clients-wrapper{
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  align-items: center;
  margin: 0 auto;
}
.partner-logo{
  width: 50%;
  max-width:230px;
  margin: 0 auto;
}
.white-logo{
  display: none;
}
/* .partner-wrapper{
  width: 90%;
  max-width: 1200px;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  gap: 20px;
} */
/* .partners{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 20px;
  margin: 20px 0;
}
.partner-logo{
  display: flex;
  align-items: center;
  justify-content: center;
  width: 300px;
}
.partner-logo img{
  width: 50%;
} 
.clients{
  background: url('./assets/images/clients.png'), var(--navblue);
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 50px 0;
}
.clients .title{
  color: var(--white);
}
.clients-wrapper{
  display: flex;
  width: 90%;
  max-width: 1000px;
  overflow: auto;
  gap: 50px;
  margin: 0 auto;
} */
 .reviews{
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 50px 0;
  margin:-50px auto 0 auto;
  background: var(--white);
  z-index: 99;
}
.reviews-wrapper{
  width: 90%;
  max-width: 1200px;
  gap:50px;
}
.review{
  margin: 20px;
  transform: scale(.8);
}
.review-info{
  background: var(--gray);
  padding: 20px 20px 40px 40px;
  border-radius: 10px;
  color: var(--blackish);
}
.slick-current .review-info{
  background: var(--lightblue);
  padding: 20px 20px 40px 40px;
  border-radius: 10px;
  color: var(--white);
  transform: scale(1.3);
  z-index: 999;
  margin: 10px;
}
.reviews-details{
  width: 90%;
  max-width: 800px;
  text-align: center;
  font-size: 1.2rem;
  font-weight: 300;
  line-height: 1;
}
.review-info::after{
  content: "";
  position: absolute;
  bottom: -40px;
  left: calc(50% - 20px);
  border-top: 20px solid var(--gray);
  border-bottom: 20px solid transparent;
  border-left: 15px solid transparent;
  border-right: 15px solid transparent;
  z-index: 99;
}
.slick-current .review-info::after{
  content: "";
  position: absolute;
  bottom: -40px;
  left: calc(50% - 20px);
  border-top: 20px solid #7BC7F7;
  border-bottom: 20px solid transparent;
  border-left: 15px solid transparent;
  border-right: 15px solid transparent;
  z-index: 99;
}
#reviewer-img{
  width: 50px;
  height: 50px;
  border-radius: 50%;
  margin-top: 50px;
}
.slick-current .reviewer{
  margin: 50px 0;
  transform: scale(1.3);
}
.reviewer{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 1rem;
}
.reviewer-name{
  font-weight: 700;
} 
.review-info h1{
  font-size: 2rem;
}
.review-info h1{
  position: absolute;
  font-size: 3rem;
  font-weight: bold;
  left: 20px;
  top: 0;
}



@media only screen and (max-width: 800px) {
  .hero{
    background-position: center right;
  }
  .hero-wrapper{
    padding: 50vh 0 0 0;
}
    #overlay,
  #overlay2{
    display: none;
  }
  .main-txt{
    width: 90%;
  }
  .reviews-details,
  .choose-details,
  .main-info{
    width: 90%;
  }
  .title{
    font-size: 1.5rem;
  }
  /* .partner-wrapper{
    flex-direction: column;
  } */
  .solution{
    width:100%;
  }
  .card-img{
    width: 100px;   
    height: 100px;
  }
  .card-bg{
    width: 80px;
    height: 80px;
  }
  .card-wrapper,
  .solutions-wrapper{
    grid-template-columns: repeat(1, 1fr);
  }
  .solution-details{
    width:250px;
    text-align: left;
  }
  .white-logo{
    display: none;
}
}
 @media only screen and (min-width: 800px){
  .clients,
  .partners{
    flex-direction: row;
    align-items: flex-start;
    z-index: 2;
  }
  .partners-wrapper,
  .clients-wrapper{
    grid-template-columns: repeat(4, 1fr);
    z-index: 2;
  }
  .partner-logo{
   cursor: pointer;
  }
  .partner-logo:hover{
    transform: scale(1.2);
    transition: ease-in-out;
  }
  .white-logo{
    display: block;
    position: relative;
    width: 120px;
    z-index: 2;
    padding: 20px 10px;
  }
  .white-logo::before{
    content: '';
    position: absolute;
    width: 110px;
    height: 100%;
    border-top-right-radius: 100px;
    border-top-left-radius: 100px;
    z-index: 2;
    bottom: 0;
    left: 0;
    background-color: var(--darkblue);
    transform: rotate(10deg);
  }
  .pandc:after{
    content: '';
    position: absolute;
    width: 100vw;
    height: 100%;
    z-index: 1;
    bottom: 0;
    left: 0;
    background-color: var(--footerblue);
  }
  .pandc:before{
    content: '';
    position: absolute;
    max-width: 1400px;
      width: 80vw;
      height: 100%;
    z-index: 2;
    bottom: 0;
    right: 0;
      border-bottom: 1000px solid white;
      border-left: 100px solid transparent;
  }
  .pandc{
    padding: 20px calc((100vw - 1200px)/2);
    position: relative;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    overflow: hidden;
  }
  .pandc .title{
    color: var(--white);
  }
 }
  @media only screen and (max-width: 1300px){
    
  .card-wrapper,
  .solutions-wrapper{
      grid-template-columns: repeat(3, 1fr);
    }
  }
   @media only screen and (max-width: 900px){
    
  .card-wrapper,
  .solutions-wrapper{
      grid-template-columns: repeat(2, 1fr);
    }
  }
   @media only screen and (max-width: 650px){
    
  .card-wrapper,
  .solutions-wrapper{
      grid-template-columns: repeat(1, 1fr);
    }

  .main-txt{
    font-size: 5rem;
  }
  }
</style>