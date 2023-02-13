<template>
  <div class="relative">
    <Header />
    <div class="bg-white flex flex-col lg:flex-row  max-w-screen-xl w-full m-auto items-center relative">
      <div class="chat-main">
        <h1 class="chat-maintitle">
          Social Media <span>Interactive Channel</span>
        </h1>
        <p class="chat-maindetails">
          A unified Service platform for you to engage with customers on all major social media channels & Messaging
          Apps.
          Saves time, resources and ensures ease in tracking performance.
        </p>
        <p class="chat-maindetails">
          Emalichat also helps business market, sell and provide great customer experience to their customers through
          Instant Messaging platforms.
        </p>
        <p class="chat-maindetails">
          For more info, contact us on <br /><span>+254 709 322 222</span>
        </p>
      </div>
      <div class="chat-img">
        <img src="../../assets/images/emali.png" class="" />
      </div>

    </div>
  </div>
</template>

<style>
.chat-img {
  width: 120%;
}

.chat-main {
  width: 90%;
  max-width: 1400px;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  color: var(--white);
  z-index: 50;
  padding: 10rem 0 5rem 0;
}

.chat-maintitle {
  font-size: 5rem;
  font-weight: 900;
  line-height: 1;
  width: 90%;
  color: var(--yellow);
}

.chat-maintitle span {
  font-size: 5rem;
  font-weight: 900;
  color: var(--darkerblue);
}

.chat-maindetails {
  font-size: 1.2rem;
  line-height: 1.1;
  font-weight: 300;
  margin: 20px 0;
  width: 90%;
  color: var(--black);
}

.chat-maindetails span {
  font-size: 2rem;
  line-height: 1.1;
  font-weight: 800;
  color: var(--black);
}

.chat-gamesbtn {
  padding: 5px 20px;
  color: var(--white);
  text-align: left;
  font: bold 14px/23px Montserrat;
  background: transparent linear-gradient(180deg, #F8BA2D 0%, #FF7805 100%) 0% 0% no-repeat padding-box;
  border-radius: 43px;
  align-items: center;
  margin-top: 30px;
  width: 130px;

}

.chat-cardswrapper {
  width: 86%;
  max-width: 1400px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 10px;
  z-index: 99;
}

.chat-card {
  display: flex;
  flex-direction: column;
}

.chat-cardmain {
  margin-top: -100px;
  padding-top: 100px;
  background: var(--white);
  padding-left: 20px;
}

.chat-cardtitle {
  font-weight: bold;
  font-size: 1.2rem;
  margin: 10px 0;
  color: var(--black);
}

.chat-carddetails {
  font-size: .9rem;
  line-height: 1.3;
  margin-bottom: 20px;
  color: var(--black);
}

.chat-cardbtn {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-right: 20px;
  float: right;
  height: 25px;
  padding: 5px;
  margin-top: 10px;
  width: 25px;
  border-radius: 50%;
  box-shadow: -3px 3px 10px rgb(41, 41, 41);
  cursor: pointer;
  z-index: 999;
}

.chat-card:nth-child(1) .content-cardbtn {
  background: var(--orange);
}

.chat-card:nth-child(2) .content-cardbtn {
  background: var(--pinkish);
}

.chat-card:nth-child(3) .content-cardbtn {
  background: var(--greenish);
}

.chat-card:nth-child(4) .content-cardbtn {
  background: var(--realorange);
}

.chat-card:nth-child(5) .content-cardbtn {
  background: var(--othergreen);
}

.chat-img {
  z-index: 50;
}

@media only screen and (max-width: 800px) {
  .chat-maintitle {
    font-size: 4rem;
  }

  .chat-maintitle span {
    font-size: 4rem;
  }
}

@media only screen and (max-width: 1300px) {
  .chat-cardswrapper {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media only screen and (max-width: 900px) {
  .chat-cardswrapper {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media only screen and (max-width: 650px) {
  .chat-cardswrapper {
    grid-template-columns: repeat(1, 1fr);
  }
}
</style>