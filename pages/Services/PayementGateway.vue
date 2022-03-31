<template>
  <div class="gateway">
    <div class="gateway-wrapper">
      <Nav/>
      <div id="overlay"></div>
      <div id="overlay2"></div>
      <div class="gateway-main">
        <h1 class="gateway-maintitle">
            Payment Gateway
        </h1>
        <p class="gateway-maindetails">
          Roamtech specializes in the development of mobile solutions and services that help businesses communicate and connect with their audiences.
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
            Payement Gateway
          </h4>
          <p class="gateway-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
             Get
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
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://play.google.com/store/apps/details?id=com.roamtech.emalipayapp&hl=sw">
            <button class="gateway-cardbtn">
              Download
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
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
              Get
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
            Bulk Airtime
          </h4>
          <p class="gateway-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
              Get
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
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="gateway-cardbtn">
              Get 
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
    display: flex;
    z-index: 99;
    overflow-x: scroll;
    box-shadow: 3px 3px 10px #ccc;
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
  .gateway-cardmain{
    width: 270px;
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
    margin-left: 50%;
    background: var(--white);
    border-radius: 50px;
    padding: 5px;
    width: 120px;
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
        .gateway-wrapper {
          padding: 4rem 0;
        }
        .gateway-maintitle {
          font-size: 4rem;

          width:60%;
        }
        .gateway-maindetails{
          font-size: 1rem;
          width:90%;
        }
        .gateway-cardmain {
          width: 220px;
        }
       
    }
</style>