<template>
  <div class="gateway">
    <div class="gateway-wrapper">
      <Nav/>
      <div id="overlay"></div>
      <div id="overlay2"></div>
      <div class="gateway-main">
        <h1 class="gateway-maintitle">
            Pay Everywhere
        </h1>
        <p class="gateway-maindetails">
          With our robust and secure Paykit Payment Gateway APIs, you can integrate payments into your platform or application with a few lines of code
        </p>
      </div>
    </div>
    <div class="gateway-cardswrapper">
      <div class="gateway-card">
        <div class="gateway-cardheader">
          <img src="~/assets/images/pg.svg">
        </div>
        <div class="gateway-cardmain">
          <h4 class="gateway-cardtitle">
            payment APIs
          </h4>
          <p class="gateway-carddetails">
            We have a set of easy to understand APIs that will make sure your payment solution is up and runnning in no time
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
              See The Docs
            </button>
          </a>
        </div>
      </div>
      <div class="gateway-card">
        <div class="gateway-cardheader">
          <img src="~/assets/images/paykit.png">
        </div>
        <div class="gateway-cardmain">
          <h4 class="gateway-cardtitle">
            Paykit
          </h4>
          <p class="gateway-carddetails">
            Our Mobile Wallet allows you to make payments across 100s of merchants and receive and send money across Mobile money and Bank accounts
          </p>
          <a href="https://play.google.com/store/apps/details?id=com.roamtech.emalipayapp&hl=sw">
            <button class="gateway-cardbtn">
              Download Paykit
            </button>
          </a>
        </div>
      </div>
      <div class="gateway-card">
        <div class="gateway-cardheader">
          <img src="~/assets/images/utility.svg">
        </div>
        <div class="gateway-cardmain">
          <h4 class="gateway-cardtitle">
            Utility Payment
          </h4>
          <p class="gateway-carddetails">
            Make utility payments from a single interface, pay for Water, Electricity tokens, Home internet and many more services from a single API
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
              Learn More
            </button>
          </a>
        </div>
      </div>
      <div class="gateway-card">
        <div class="gateway-cardheader">
          <img src="~/assets/images/airtime.svg">
        </div>
        <div class="gateway-cardmain">
          <h4 class="gateway-cardtitle">
            Bulk Airtime & Data
          </h4>
          <p class="gateway-carddetails">
            Our payment makes buying Bulk Airtime and Data easy and seamless, with a few lines of code you can top up Airtime and Data from your platform
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
              Learn More
            </button>
          </a>
        </div>
      </div>
      <div class="gateway-card">
        <div class="gateway-cardheader">
          <img src="~/assets/images/Image 35.png">
        </div>
        <div class="gateway-cardmain">
          <h4 class="gateway-cardtitle">
            API Intergration
          </h4>
          <p class="gateway-carddetails">
            We have an easy to use API that allows you to integrate our payment solutions into your workflow no matter what language you already use
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
              See The Docs
            </button>
          </a>
        </div>
      </div>
    </div>
    <div class="gateway-footer">

    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.gateway{
  background: var(--gray);
   padding-bottom: 100px;
}
  .gateway-wrapper{
    background:url('./assets/images/paymentgt.png'), var(--black);
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    height: 95vh;
  }  
  .gateway-wrapper:after{
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    background: var(--black);
    top: 0;
    left: 0;
    opacity: .5;
    z-index: 1;
  }
  #overlay,
  #overlay2{
    width: 200px;
    height: 700px;
    border-radius: 200px;
    background: var(--white);
    position: absolute;
    z-index: 20;
    overflow: visible;
  }
  .gateway-wrapper #overlay2{
    top: -150px;
    right: 500px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .gateway-wrapper #overlay{
    top: 200px;
    right: 350px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .gateway-main{
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: flex;
    padding: 15rem 0 5rem 0;
    flex-direction: column;
    color: var(--white);
    z-index: 3;
  }
  .gateway-maintitle{
    font-size: 5rem;
    font-weight: 900;
    line-height: 1;
    width: 30%;
  }
  .gateway-maindetails{
    font-size: 1.2rem;
    line-height: 1.1;
    font-weight: 300;
    margin: 20px 0;
    width: 40%;
  }
  .gateway-cardswrapper{
    width: 90%;
    max-width: 1400px;
    margin: -100px auto 0px auto;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    justify-content: center;
    grid-gap: 20px;
    z-index: 99;
  } 
  .gateway-card{
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0 30px 40px 30px;
    background: var(--white);
    box-shadow: 3px 3px 10px #ccc;
  }
 
  .gateway-cardheader{
    width: 100px;
    height: 200px;
    border-bottom-left-radius: 50px;
    border-bottom-right-radius: 50px;
    display: flex;
    align-items: center;
    background:var(--gray);
    justify-content: center;
  }

  .gateway-cardheader img{
    width: 70%;
  }
  .gateway-cardtitle{
    font-weight: bold;
    font-size: 1.2rem;
    margin: 20px 0 10px 0;
  }
  .gateway-carddetails{
    font-size: .9rem;
    line-height: 1.3;
    margin-bottom: 30px;
    color: var(--blackish);
  }
  .gateway-cardbtn{
    background: var(--white);
    border-radius: 50px;
    padding: 5px;
    width: 150px;
    box-shadow: -3px 3px 10px #ccc;
    font-weight: bold;
  }
  .gateway-card:nth-child(1) .gateway-cardbtn{
    color:var(--greengreen);
  }
  .gateway-card:nth-child(2) .gateway-cardbtn{
    color:var(--navblue);
  }
  .gateway-card:nth-child(3) .gateway-cardbtn{
    color:var(--red);
  }
  .gateway-card:nth-child(4) .gateway-cardbtn{
    color:var(--purple);
  }
  .gateway-card:nth-child(5) .gateway-cardbtn{
    color:var(--greenish);
  }
  @media only screen and (max-width: 800px) {
        .gateway-maintitle {
          font-size: 4rem;

          width:60%;
        }
        .gateway-maindetails{
          font-size: 1rem;
          width:90%;
        }
         .gateway-cardswrapper{
           grid-template-columns: repeat(2, 1fr);
         }
    }
  @media only screen and (max-width: 1300px){
    .gateway-cardswrapper{
      grid-template-columns: repeat(3, 1fr);
    }
  }
   @media only screen and (max-width: 900px){
    .gateway-cardswrapper{
      grid-template-columns: repeat(2, 1fr);
    }
  }
   @media only screen and (max-width: 650px){
    .gateway-cardswrapper{
      grid-template-columns: repeat(1, 1fr);
    }
  }
</style>