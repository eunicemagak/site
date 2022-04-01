<template>
  <div class="sm-sol">
    <div class="smsol-wrapper">
      <Header/>
      <div id="overlay"></div>
      <div id="overlay2"></div>
      <div class="smsol-main">
        <h1 class="smsol-maintitle">
            Fintech Solutions
        </h1>
        <p class="smsol-maindetails">
          Roamtech specializes in the development of mobile solutions and services that help businesses communicate and connect with their audiences.
        </p>
      </div>
    </div>
    <div class="smsol-cardswrapper">
      <div class="smsol-card">
        <div class="smsol-cardheader">
          <img src="~/assets/images/senti.png">
        </div>
        <div class="smsol-cardmain">
          <h4 class="smsol-cardtitle">
            Senti
          </h4>
          <p class="smsol-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://senti.co.ke">
            <button class="smsol-cardbtn">
      
            <i class='fa fa-chevron-right'></i>
    
               </button>
          </a>
        </div>
      </div>
      <div class="smsol-card">
        <div class="smsol-cardheader">
          <img src="~/assets/images/loans.png">
        </div>
        <div class="smsol-cardmain">
          <h4 class="smsol-cardtitle">
            Business Loan
          </h4>
          <p class="smsol-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://senti.co.ke">
            <button class="smsol-cardbtn">
             <i class='fa fa-chevron-right'></i>
            </button>
          </a>
        </div>
      </div>
      <div class="smsol-card">
        <div class="smsol-cardheader">
          <img src="~/assets/images/lender.png">
        </div>
        <div class="smsol-cardmain">
          <h4 class="smsol-cardtitle">
            Lending App
          </h4>
          <p class="smsol-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="smsol-cardbtn">
             <i class='fa fa-chevron-right'></i>
            </button>
          </a>
        </div>
      </div>
      <div class="smsol-card">
        <div class="smsol-cardheader">
          <img src="~/assets/images/fintech.png">
        </div>
        <div class="smsol-cardmain">
          <h4 class="smsol-cardtitle">
            Fintech
          </h4>
          <p class="smsol-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="smsol-cardbtn">
              <i class='fa fa-chevron-right'></i>
            </button>
          </a>
        </div>
      </div>
      <div class="smsol-card">
        <div class="smsol-cardheader">
          <img src="~/assets/images/fintech.png">
        </div>
        <div class="smsol-cardmain">
          <h4 class="smsol-cardtitle">
            Fintech
          </h4>
          <p class="smsol-carddetails">
            Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony
          </p>
          <a href="https://emalify.com/">
            <button class="smsol-cardbtn">
              <i class='fa fa-chevron-right'></i>
            </button>
          </a>
        </div>
      </div>
    </div>
    <div class="smsol-footer">

    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.sm-sol{
  background: var(--gray);
  
}
  .smsol-wrapper{
    background:url('./assets/images/mobilelending.png');
    background-color: var(--gray);
    background-position: right;
    background-repeat: no-repeat;
    background-size: contain;
    position: relative;
    height: 95vh;
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
  .smsol-wrapper #overlay2{
    top: -150px;
    right: 500px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .smsol-wrapper #overlay{
    top: 200px;
    right: 350px;
    transform: rotate(12deg);
    mix-blend-mode: overlay;
    opacity: 40%;
  }
  .smsol-main{
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: flex;
    padding: 15rem 0 5rem 0;
    flex-direction: column;
    z-index: 3;
  }
  .smsol-maintitle{
    font-size: 5rem;
    font-weight: 900;
    line-height: 1;
    width: 30%;
    color: var(--navblue);
  }
  .smsol-maindetails{
    font-size: 1.2rem;
    line-height: 1.1;
    font-weight: 300;
    margin: 20px 0;
    width: 40%;
    color: var(--black);
    font-weight: 300;
  }
  .smsol-cardswrapper{
    width: 90%;
    max-width: 1400px;
    margin: -100px auto 200px auto;
    display: flex;
    z-index: 99;
    overflow-x: scroll;
    box-shadow: 3px 3px 10px #ccc;
  } 
  .smsol-card{
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0 30px 40px 30px;
    background: var(--white);
    box-shadow: 3px 3px 10px #ccc;
  }
 
  .smsol-cardheader{
    width: 100px;
    height: 200px;
    border-bottom-left-radius: 50px;
    border-bottom-right-radius: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
  }
      .smsol-card:nth-child(odd) .smsol-cardheader{
    background:var(--navblue);
  }
  .smsol-card:nth-child(even) .smsol-cardheader{
    background:var(--white);
  }
  .smsol-card:nth-child(even){
    background:var(--gray);
  }

  .smsol-cardheader img{
    width: 70%;
  }
  .smsol-cardmain{
    width: 270px;
  }
  .smsol-cardtitle{
    font-weight: bold;
    font-size: 1.2rem;
    margin: 20px 0 10px 0;
  }
  .smsol-carddetails{
    font-size: .9rem;
    line-height: 1.3;
    margin-bottom: 30px;
  }
  .smsol-cardbtn{
    margin-left: 90%;
    background: var(--white);
    padding: 5px;
    height: 30px;
    width: 30px;
    border-radius: 50%;
    text-align: center;
    box-shadow: -3px 3px 10px rgb(182, 180, 180);
    font-weight: bold;
  }
  .smsol-card:nth-child(1) .smsol-cardbtn{
    color:var(--navblue);
  }
  .smsol-card:nth-child(2) .smsol-cardbtn{
    color:var(--red);
  }
  .smsol-card:nth-child(3) .smsol-cardbtn{
    color:var(--yellow);
  }
  .smsol-card:nth-child(4) .smsol-cardbtn{
    color:var(--othergreen);
  }
  .smsol-card:nth-child(5) .smsol-cardbtn{
    color:var(--othergreen);
  }
  @media only screen and (max-width: 800px) {
        .smsol-maintitle {
          font-size: 4rem;

          width:60%;
        }
        .smsol-maindetails{
          font-size: 1rem;
          width:90%;
        }
        .smsol-cardmain {
          width: 220px;
        }
       
    }
</style>