<template>
  <div class="smssol">
    <div class="smssol-wrapper">
      <Header/>
      <div id="overlay"></div>
      <div id="overlay2"></div>
      <div class="smssol-main">
        <h1 class="smssol-maintitle">
          Talk To Your Customers
        </h1>
        <p class="smssol-maindetails">
          Deliver real time personalized communication through a secure and reliable messaging system supporting SMS, USSD, Shortcodes, IVR and Social channels
        </p>
      </div>
    </div>
    <div class="smssol-cardswrapper">
      <div class="smssol-card">
        <div class="smssol-cardheader">
          <img src="~/assets/images/bulk.svg">
        </div>
        <div class="smssol-cardmain">
          <h4 class="smssol-cardtitle">
            Bulk SMS
          </h4>
          <p class="smssol-carddetails">
            Reach thousands of your customers with the click of a button from your computer or mobile phone to your customers and staff phones in seconds. We ensure a secure, reliable and quick channel that gets your communication to your customer on time.
          </p>
          <a href="https://emalify.com/">
            <button class="smssol-cardbtn">
              Learn More
            </button>
          </a>
        </div>
      </div>
      <div class="smssol-card">
        <div class="smssol-cardheader">
          <img src="~/assets/images/survey.svg">
        </div>
        <div class="smssol-cardmain">
          <h4 class="smssol-cardtitle">
            USSD
          </h4>
          <p class="smssol-carddetails">
            USSD messaging provides longer interaction sessions than Short Code messaging and by far more responsive. Roamtech provides you with a platform to provide communication that is session based which can be triggered by you as the corporate company or by the user who is your customer.
          </p>
          <a href="https://emalify.com/">
            <button class="smssol-cardbtn">
              Learn More 
            </button>
          </a>
        </div>
      </div>
      <div class="smssol-card">
        <div class="smssol-cardheader">
          <img src="~/assets/images/messaging.svg">
        </div>
        <div class="smssol-cardmain">
          <h4 class="smssol-cardtitle">
            Short Codes
          </h4>
          <p class="smssol-carddetails">
            Two-way messaging allows your customers to reply to your SMS messages. These are 6-digit numbers that can be tied to your company for easy identification by you customers. Excellent for feedback, queries and surveys
          </p>
          <a href="https://emalify.com/">
            <button class="smssol-cardbtn">
              Learn More
            </button>
          </a>
        </div>
      </div>
      <div class="smssol-card">
        <div class="smssol-cardheader">
          <img src="~/assets/images/telecom.svg">
        </div>
        <div class="smssol-cardmain">
          <h4 class="smssol-cardtitle">
            Premium SMS
          </h4>
          <p class="smssol-carddetails">
            Build and deliver content to your customers either on demand or via subscription with our premium sms service
          </p>
          <a href="https://emalify.com/">
            <button class="smssol-cardbtn">
              Learn More
            </button>
          </a>
        </div>
      </div>
      <div class="smssol-card">
        <div class="smssol-cardheader">
          <img src="~/assets/images/sound.svg">
        </div>
        <div class="smssol-cardmain">
          <h4 class="smssol-cardtitle">
            Surveys
          </h4>
          <p class="smssol-carddetails">
            Get reviews about your products or services and make data-driven decisions. Run surveys and get to know how your services affect your bottomline.
          </p>
          <a href="https://emalify.com/">
            <button class="smssol-cardbtn">
              Learn More
            </button>
          </a>
        </div>
      </div>
    </div>
    <div class="smssol-footer">

    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.sms-sol{
  background: var(--gray);
}
  .smssol-wrapper{
    background:url('./assets/images/smsbg.jpg');
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    height: 95vh;
  }
  .smssol-wrapper:after{
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    background: linear-gradient( to right, var(--black), var(--black));
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
  .smssol-wrapper #overlay2{
    top: -150px;
    right: 500px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .smssol-wrapper #overlay{
    top: 200px;
    right: 350px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .smssol-main{
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    color: var(--white);
    z-index: 3;
    padding: 15rem 0 5rem 0;
  }
  .smssol-maintitle{
    font-size: 5rem;
    font-weight: 900;
    line-height: 1;
    width: 30%;
  }
  .smssol-maindetails{
    font-size: 1.2rem;
    line-height: 1.1;
    font-weight: 300;
    margin: 20px 0;
    width: 50%;
  }
  .smssol-cardswrapper{
    width: 90%;
    max-width: 1400px;
    margin: -100px auto 200px auto;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 10px;
    z-index: 99;
  } 
  .smssol-card{
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0 30px 40px 30px;
    box-shadow: 3px 3px 10px #ccc;
    position: relative;
  }
  .smssol-card:nth-child(odd){
    background: var(--white);
  }
  .smssol-card:nth-child(even){
    background: var(--gray);
  }
  .smssol-cardheader{
    width: 100px;
    height: 200px;
    border-bottom-left-radius: 50px;
    border-bottom-right-radius: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
  }
    .smssol-card:nth-child(1) .smssol-cardheader{
    background:var(--orange);
  }
  .smssol-card:nth-child(2) .smssol-cardheader{
    background:var(--reddish);
  }
  .smssol-card:nth-child(3) .smssol-cardheader{
    background:var(--green);
  }
  .smssol-card:nth-child(4) .smssol-cardheader{
    background:var(--realorange);
  }
  .smssol-card:nth-child(5) .smssol-cardheader{
    background:var(--othergreen);
  }
  .smssol-cardheader img{
    width: 70%;
  }
  .smssol-cardtitle{
    font-weight: bold;
    font-size: 1.2rem;
    margin: 20px 0 10px 0;
  }
  .smssol-carddetails{
    font-size: .9rem;
    line-height: 1.3;
    margin-bottom: 30px;
    color: var(--blackish);
  }
  .smssol-cardbtn{
    background: var(--white);
    border-radius: 50px;
    padding: 5px;
    width: 150px;
    box-shadow: -3px 3px 10px #ccc;
    font-weight: bold;
  }
  .smssol-card:nth-child(1) .smssol-cardbtn{
    color:var(--orange);
  }
  .smssol-card:nth-child(2) .smssol-cardbtn{
    color:var(--pinkish);
  }
  .smssol-card:nth-child(3) .smssol-cardbtn{
    color:var(--greenish);
  }
  .smssol-card:nth-child(4) .smssol-cardbtn{
    color:var(--realorange);
  }
  .smssol-card:nth-child(5) .smssol-cardbtn{
    color:var(--othergreen);
  }
@media only screen and (max-width: 800px) {
  .smssol-wrapper:after{
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    background: linear-gradient( to right, var(--black), var(--black));
    top: 0;
    left: 0;
    opacity: .5;
    z-index: 1;
  }
  .smssol-maintitle{
    font-size:4rem;
    width: 90%;
  }
  .smssol-maindetails{
    width: 90%;
  }
  .smssol-cardheader{
    width: 80px;
    height: 120px;
  }
}
 @media only screen and (max-width: 1300px){
    .smssol-cardswrapper{
      grid-template-columns: repeat(3, 1fr);
    }
  }
   @media only screen and (max-width: 900px){
    .smssol-cardswrapper{
      grid-template-columns: repeat(2, 1fr);
    }
  }
   @media only screen and (max-width: 650px){
    .smssol-cardswrapper{
      grid-template-columns: repeat(1, 1fr);
    }
  }
</style>