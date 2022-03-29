<template>
<div>
  <div class="hero">
      <div id="overlay"></div>
      <div id="overlay2"></div>
    <div class="hero-wrapper">
      <h1 class="main-txt">
        Customer Oriented Solutions
      </h1>
      <p class="main-info">
        Our solutions are focused on the insight that the consumer comes first
      </p>
      <button class="engage">
        LETS ENGAGE
      </button>
    </div>
  </div>
  <div class="chooseus">
    <h1 class="title">WHY CHOOSE US</h1>
    <p class="choose-details">Roamtech specializes in the development of mobile solutions and services that help businesses communicate and connect with their audiences.</p>
    <div class="card-wrapper">
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
            <img src="../assets/images/prize.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          WE DELIVER QUALITY
        </h4>
        <p class="card-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et
        </p>
      </div>
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
            <img src="../assets/images/time.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          ALWAYS ON TIME
        </h4>
        <p class="card-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et
        </p>
      </div>
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
            <img src="../assets/images/think.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          WE ARE INNOVATORS
        </h4>
        <p class="card-details">
          We develop and maintain our own proprietary platforms and systems for high-volume sending and receiving of messages across mobile platforms.        
        </p>
      </div>
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
              <img src="../assets/images/ip.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          WE OWN OUR IP
        </h4>
        <p class="card-details">
          Our solutions are developed in-house with a dependency on external partners
        </p>
      </div>
      <div class="card">
        <div class="card-img">
          <div  class="card-bg">
            <img src="../assets/images/box.png" class="service-icons"/>
          </div>
        </div>
        <h4 class="card-title">
          SCALABLE & MODULAR SOLUTIONS
        </h4>
        <p class="card-details">
          We develop solutions that can be upscaled without changing the core platform. The solutions come in modules that can bearded or removed depending on the needs of a particular client.
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
          PAYEMENT GATEWAY
        </h4>
        <p class="solution-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </p>
        <div class="solution-footer">
          <nuxt-link to="/Services/PayementGateway"  class="get-solution">
            GET SOLUTION
          </nuxt-link>
          <img src="../assets/images/share.svg" class="share"/>
        </div>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/channels.png" alt="">
        </div>
        <h4 class="solution-title">
          PAYMENT CHANNELS
        </h4>
        <p class="solution-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </p>
        <div class="solution-footer">
          <nuxt-link to="/Services/PayementChannels"  class="get-solution">
            GET SOLUTION
          </nuxt-link>
          <img src="../assets/images/share.svg" class="share"/>
        </div>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/sms.png" alt="">
        </div>
        <h4 class="solution-title">
          SMS SOLUTIONS
        </h4>
        <p class="solution-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </p>
        <div class="solution-footer">
          <nuxt-link to="/Services/SMSSolutions"  class="get-solution">
            GET SOLUTION
          </nuxt-link>
          <img src="../assets/images/share.svg" class="share"/>
        </div>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/lending.png" alt="">
        </div>
        <h4 class="solution-title">
          MOBILE LENDING
        </h4>
        <p class="solution-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </p>
        <div class="solution-footer">
          <nuxt-link to="/Services/MobileLending"  class="get-solution">
            GET SOLUTION
          </nuxt-link>
          <img src="../assets/images/share.svg" class="share"/>
        </div>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/content.png" alt="">
        </div>
        <h4 class="solution-title">
          CONTENT
        </h4>
        <p class="solution-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </p>
        <div class="solution-footer">
          <nuxt-link to="/Services/Content"  class="get-solution">
            GET SOLUTION
          </nuxt-link>
          <img src="../assets/images/share.svg" class="share"/>
        </div>
      </div>
      <div class="solution">
        <div solution-img>
          <img src="../assets/images/games.png" alt="">
        </div>
        <h4 class="solution-title">
          GAMES & LOTTERIES
        </h4>
        <p class="solution-details">
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </p>
        <div class="solution-footer">
          <nuxt-link to="/Services/Games&Lotteries"  class="get-solution">
            GET SOLUTION
          </nuxt-link>
          <img src="../assets/images/share.svg" class="share"/>
        </div>
      </div>
    </div>
  </div>
      <div class="partners">
        <h1 class="title">
          OUR PARTNERS
        </h1>
        <div class="partner-wrapper">
          <div class="partner-logo">
            <img src="../assets/images/airtel.png"/>
          </div>
          <div class="partner-logo">
            <img src="../assets/images/safaricom.png"/>
          </div>
          <div class="partner-logo">
            <img src="../assets/images/telkom.png"/>
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
  </div>
  <div class="reviews">
    <h1 class="title">
      CUSTOMER REVIEWS
    </h1>
    <p class="reviews-details">
      Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
    </p>
    <div class="reviews-wrapper">
      <div class="review">
        <div class="review-info">
          <h1>"</h1>
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </div>
        <div class="reviewer">
          <img src="../assets/images/user.jpg" id="reviewer-img"/>
          <h4 class="reviewer-name">
            Xyzane Ltd
          </h4>
        </div>
      </div>
      <div class="review">
        <div class="review-info">
          <h1>"</h1>
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </div>
        <div class="reviewer">
          <img src="../assets/images/user.jpg" id="reviewer-img"/>
          <h4 class="reviewer-name">
            Xyzane Ltd
          </h4>
        </div>
      </div>
      <div class="review">
        <div class="review-info">
          <h1>"</h1>
          Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
        </div>
        <div class="reviewer">
          <img src="../assets/images/user.jpg" id="reviewer-img"/>
          <h4 class="reviewer-name">
            Xyzane Ltd
          </h4>
        </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
import Header from '~/components/Header.vue';


export default {
  name: 'IndexPage',
  components: {
    Header, 
  }
}
</script>
<style>
.hero{
  background: url('./assets/images/main.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  height: 88vh;
}
.hero-wrapper{
  width: 90%;
  max-width: 1400px;
  margin: 0 auto;
  padding: 3rem 0;
  display: flex;
  flex-direction: column;
  color: var(--white);
}
#overlay,
#overlay2{
  width: 200px;
  height: 700px;
  border-radius: 200px;
  background: var(--white);
  position: absolute;
  z-index: 2;
  overflow: visible;
}
#overlay{
  top: -200px;
  right: 350px;
  transform: rotate(9deg);
  mix-blend-mode: overlay;
  opacity: 40%;
}
#overlay2{
  top: 200px;
  right: 630px;
  transform: rotate(9deg);
  mix-blend-mode: overlay;
  opacity: 40%;
}
.main-txt{
  font-weight: bolder;
    font-family: 'Avenir Next LT Pro';
  font-size: 6rem;
  line-height: 1;
  width: 30%;
}
.main-info{
  margin: 20px 0;
  font-size: 1.2rem;
  font-weight: 500;
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
  padding: 2rem 0;
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
  max-width: 1000px;
  margin: 0 auto;
  height: 100%;
  overflow-y: hidden;
  display: flex;
  flex-wrap: nowrap;
  gap: 2px;
  }
.card-wrapper{
  width: 90%;
  max-width: 1000px;
  margin: 50px auto;
  height: 100%;
  overflow-y: hidden;
  display: flex;
  flex-wrap: nowrap;
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
  width: 300px;
  font-weight: 100;
  line-height: 1.1;
  }
.card-details{
  color: var(--textgray);
  width: 300px;
  font-weight: 100;
  line-height: 1.1;
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
}
.solution{
  padding: 10px 10px 50px 10px;
  background: var(--cardgray);
  border-radius: 10px;
  display: flex;
  flex-direction: column;
  text-align: center;
  gap: 2rem;
}
.solution-footer{
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.get-solution{
  background: var(--navblue);
  color: var(--white);
  padding: 5px 10px;
  border-radius: 50px;
  font-weight: bold;
  font-size: .8rem;
}
.share{
  width: 40px;
}
.partner-wrapper,
.partners{
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 20px;
  margin: 50px 0;
}
.partner-logo{
  width: 200px;
  height: 80px;
  padding: 10px;
  background: var(--white);
  box-shadow: -3px 3px 10px #ccc;
}
.partner-logo img{
  width: 100%;
  height: 100%;
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
}
.reviews{
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 50px 0;
}
.reviews-details{
  width: 70%;
  text-align: center;
  font-size: 1.2rem;
  font-weight: 300;
  line-height: 1;
}
.reviews-wrapper{
  display: flex;
  gap: 3rem;
}
.review{
  width: 400px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.review-info{
  background: var(--lightblue);
  padding: 20px 20px 20px 60px;
  margin: 50px 0;
  border-radius: 31px;
  color: var(--white);
  position: relative;
  width: 350px;
}
.review-info h1{
  position: absolute;
  font-size: 3rem;
  font-weight: bold;
  left: 20px;
  top: 0;
}
.review-info::after{
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
  width: 70px;
  height: 70px;
  border-radius: 50%;
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
@media only screen and (max-width: 800px) {
    #overlay,
  #overlay2{
    display: none;
  }
  .main-txt{
    font-size: 3rem;
  }
  .reviews-details,
  .choose-details,
  .main-info{
    width: 90%;
  }
  .title{
    font-size: 1.5rem;
  }
  .partners{
    flex-direction: column;
  }
  .partner-wrapper{
    flex-direction: column;
  }
  .reviews-wrapper{
    width: 90%;
    overflow-x: scroll;
  }
  .review-info{
    padding: 10px 20px 20px 40px;
    width: 300px;
  }
  .review-info h1{
    font-size: 2rem;
  }
  .card-wrapper{
    gap:5px;
  }
  .card,
  .solution{
    width:80%;
  }
  .card-img{
    width: 100px;
    height: 100px;
  }
  .card-bg{
    width: 80px;
    height: 80px;
  }
  .solution-details,
  .card-details{
    width: 250px !important;
  }
}
</style>