<template>
  <div class="payment">
    <div class="payment-wrapper">
      <Header/>
      <div id="overlay"></div>
      <div id="overlay2"></div>
      <div class="payment-main">
        <h1 class="payment-maintitle">
            Payment Channels
        </h1>
        <p class="payment-maindetails">
          Roamtech specializes in the development of mobile solutions and services that help businesses communicate and connect with their audiences.
        </p>
      </div>
    </div>
    <div class="payment-cardswrapper">
      <div class="payment-card">
        <div class="payment-cardheader">
          <img src="~/assets/images/short.svg">
        </div>
        <div class="payment-cardmain">
          <h4 class="payment-cardtitle">
            Short-Code
          </h4>
          <p class="payment-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="payment-cardbtn">
             Get Short Code
            </button>
          </a>
        </div>
      </div>
      <div class="payment-card">
        <div class="payment-cardheader">
          <img src="~/assets/images/USSD.svg">
        </div>
        <div class="payment-cardmain">
          <h4 class="payment-cardtitle">
            USSD Codes
          </h4>
          <p class="payment-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/ussd">
            <button class="payment-cardbtn">
              Get USSD
            </button>
          </a>
        </div>
      </div>
      <div class="payment-card">
        <div class="payment-cardheader">
          <img src="~/assets/images/mobiapp.svg">
        </div>
        <div class="payment-cardmain">
          <h4 class="payment-cardtitle">
            Mobile App
          </h4>
          <p class="payment-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="payment-cardbtn">
              Discover
            </button>
          </a>
        </div>
      </div>
      <div class="payment-card">
        <div class="payment-cardheader">
          <img src="~/assets/images/message.svg">
        </div>
        <div class="payment-cardmain">
          <h4 class="payment-cardtitle">
            Bulk Airtime
          </h4>
          <p class="payment-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="payment-cardbtn">
              Get
            </button>
          </a>
        </div>
      </div>
      <div class="payment-card">
        <div class="payment-cardheader">
          <img src="~/assets/images/music.svg">
        </div>
        <div class="payment-cardmain">
          <h4 class="payment-cardtitle">
            API Intergration
          </h4>
          <p class="payment-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="payment-cardbtn">
              Get 
            </button>
          </a>
        </div>
      </div>
      <div class="payment-card">
        <div class="payment-cardheader">
          <img src="~/assets/images/chat.svg">
        </div>
        <div class="payment-cardmain">
          <h4 class="payment-cardtitle">
            API Intergration
          </h4>
          <p class="payment-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="payment-cardbtn">
              Get 
            </button>
          </a>
        </div>
      </div>
      <div class="payment-card">
        <div class="payment-cardheader">
          <img src="~/assets/images/chat.svg">
        </div>
        <div class="payment-cardmain">
          <h4 class="payment-cardtitle">
            API Intergration
          </h4>
          <p class="payment-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="payment-cardbtn">
              Get 
            </button>
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.payment{
  background: var(--gray);
  padding-bottom: 100px;
}
  .payment-wrapper{
    background:url('./assets/images/payment.png'), var(--black);
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    height: 95vh;
  }  
  .payment-wrapper:after{
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
  .payment-wrapper #overlay2{
    top: -150px;
    right: 500px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .payment-wrapper #overlay{
    top: 200px;
    right: 350px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .payment-main{
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: flex;
    padding: 5rem 0;
    flex-direction: column;
    color: var(--white);
    z-index: 3;
  }
  .payment-maintitle{
    font-size: 5rem;
    font-weight: bolder;
    line-height: 1;
    width: 30%;
  }
  .payment-maindetails{
    font-size: 1.5rem;
    line-height: 1.2;
    font-weight: 300;
    margin: 20px 0;
    width: 40%;
  }
  .payment-cardswrapper{
    width: 90%;
    max-width: 1400px;
    margin: -100px auto 0 auto;
    display: flex;
    z-index: 99;
    overflow-x: scroll;
    box-shadow: 3px 3px 10px #ccc;
  } 
  .payment-card{
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0 30px 40px 30px;
    background: var(--white);
    box-shadow: 3px 3px 10px #ccc;
  }
 
  .payment-cardheader{
    width: 100px;
    height: 200px;
    border-bottom-left-radius: 50px;
    border-bottom-right-radius: 50px;
    display: flex;
    align-items: center;
    background:var(--gray);
    justify-content: center;
  }
      .payment-card:nth-child(1) .payment-cardheader{
    background:var(--red);
  }
  .payment-card:nth-child(2) .payment-cardheader{
    background:var(--yellow);
  }
  .payment-card:nth-child(3) .payment-cardheader{
    background:var(--skyblue);
  }
  .payment-card:nth-child(4) .payment-cardheader{
    background:var(--navblue);
  }
  .payment-card:nth-child(5) .payment-cardheader{
    background:var(--orange);
  }
  .payment-card:nth-child(6) .payment-cardheader{
    background:var(--green);
  }
  .payment-card:nth-child(7) .payment-cardheader{
    background:var(--purple);
  }

  .payment-cardheader img{
    width: 80%;
  }
  .payment-cardmain{
    width: 270px;
  }
  .payment-cardtitle{
    font-weight: bold;
    font-size: 1.2rem;
    margin: 20px 0 10px 0;
  }
  .payment-carddetails{
    font-size: .9rem;
    line-height: 1.3;
    margin-bottom: 30px;
  }
  .payment-cardbtn{
    margin-left: 50%;
    background: var(--white);
    border-radius: 50px;
    padding: 5px;
    width: 150px;
    box-shadow: -3px 3px 10px #ccc;
    font-weight: bold;
  }
  .payment-card:nth-child(1) .payment-cardbtn{
    color:var(--red);
  }
  .payment-card:nth-child(2) .payment-cardbtn{
    color:var(--orange);
  }
  .payment-card:nth-child(3) .payment-cardbtn{
    color:var(--skyblue);
  }
  .payment-card:nth-child(4) .payment-cardbtn{
    color:var(--red);
  }
  .payment-card:nth-child(5) .payment-cardbtn{
    color:var(--orange);
  }
  .payment-card:nth-child(6) .payment-cardbtn{
    color:var(--othergreen);
  }
  .payment-card:nth-child(7) .payment-cardbtn{
    color:var(--purple);
  }
  @media only screen and (max-width: 800px) {
        .payment-wrapper {
          padding: 4rem 0;
        }
        .payment-maintitle {
          font-size: 4rem;
          width:60%;
        }
        .payment-maindetails{
          font-size: 1rem;
          width:90%;
        }
        .payment-cardmain {
          width: 220px;
        }
       
    }
</style>