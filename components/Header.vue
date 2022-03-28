<template>
  <nav class="bg-transparent">
      <div class="logo">
          <img src="../assets/images/logoblue.png" alt="">
      </div>
      <div class="navigation">
      <img class="mobile-menu" src="../assets/images/menu.png" @click="toggleNav($event)"/>
      <div class="nav-links">
          <nuxt-link to="/">
              HOME
          </nuxt-link>
          <nuxt-link to="/OurStory">
              OUR STORY
          </nuxt-link>
          <div class="dropdown">
                <div class="nav-button" @click="toggleDropdown($event)"> 
                    SERVICES
                </div>
                <div class="dropdown-links">
                    <nuxt-link to="/Services/Content">
                        Content
                    </nuxt-link>
                    <nuxt-link to="/Services/SMSSolutions">
                        SMS Solutions
                    </nuxt-link>
                    <nuxt-link to="/Services/PayementGateway">
                        Payement Gateway
                    </nuxt-link>
                    <nuxt-link to="/Services/MobileLending">
                        Mobile Lending
                    </nuxt-link>
                    <nuxt-link to="/Services/PayementChannels">
                        Payement Channels
                    </nuxt-link>
                    <nuxt-link to="/Services/Games&Lotteries">
                        Games & Lotteries
                    </nuxt-link>
                    <nuxt-link to="/Services/More">
                        More
                    </nuxt-link>
                </div>
            </div>
          <nuxt-link to="/ContactUs">
              CONTACT
          </nuxt-link>
    <nuxt-link to="/#solutions" class="nav-btn">
      Lets Enjoy
    </nuxt-link>
      </div>
      </div>
  </nav>
</template>

<script>
export default {
  methods: {
            toggleDropdown (event) {
                event.currentTarget.classList.toggle('is-active')
            },
                toggleNav (event) {
                    event.currentTarget.classList.toggle('is-active')
                }
            }
}

</script>

<style>
    .bg-transparent{
        display: flex;
        justify-content: space-between;
        align-items:center;
        position: relative;
    }
    .logo{
        width: 20%;
        max-width: 100px;
    }
    .mobile-menu{
        right: 20px;
        width: 20px;
    }
    .navigation{
        position: relative;
    }
        .nav-links{
        color: var(--navblue); 
        background: var(--white);
        font-weight: 600;
        display: flex;
        flex-direction: column;
        gap: 50px;
        margin-left: -600px;
        align-items: center;
        font-size: 1rem;
        position: absolute;
        right:0;
        width: 100vw;
        z-index: 999;
        padding:20px;
        visibility: hidden;
    }
    .nav-button{
        color: var(--navblue); 
        font-weight: 600;
        display: flex;
        align-items: center;
        font-size: 1rem;
        cursor: pointer;
    }
    .nav-btn{
        padding: 5px 20px;
        color: var(--white);
        background-color: var(--red);
        border-radius: 24px;
        align-items: center;
    }
    .dropdown{
        position: relative;
    }
    .dropdown-links{
       display: flex;
       flex-direction: column; 
       align-items: center;
       background: var(--navblue);
       color: var(--white);
       visibility: hidden;
       position: absolute;
       z-index: 999;
       left: -50px;
       top: 20px;
    }
    .dropdown-links a{
       width: 180px;
    }
    .dropdown-links a:hover{
        background: var(--footerblue);
    }
    .dropdown .is-active + .dropdown-links{
        visibility: visible !important; 
    }
    .navigation .is-active + .nav-links{
        visibility: visible;
    }
  
    @media only screen and (min-width: 800px) {
        .nav-links{
            flex-direction: row;
        }
    }
</style>