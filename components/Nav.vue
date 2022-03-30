<template>
  <nav class="bg-transparent1">
      <nuxt-link to='/' class="logo1">
          <img src="../assets/images/logowhite.png" alt="">
      </nuxt-link>
      <div class="navigation1">
        <img class="mobile-menu1" src="../assets/images/menuwhite.png" @click="toggleNav($event)"/>
        <div class="nav-links1">
            <nuxt-link to="/">
                HOME
            </nuxt-link>
            <nuxt-link to="/OurStory">
                OUR STORY
            </nuxt-link>
            <div class="dropdown1">
                    <div class="nav-button1" @click="toggleDropdown($event)" :class="menuOpen ? 'is-active' : ''"> 
                        SERVICES
                    </div>
                    <div class="dropdown-links1">
                        <nuxt-link to="/Services/Content" @click="toggleDropdown($event)">
                            Content
                        </nuxt-link>
                        <nuxt-link to="/Services/SMSSolutions" @click="toggleDropdown($event)">
                            SMS Solutions
                        </nuxt-link>
                        <nuxt-link to="/Services/PayementGateway" @click="toggleDropdown($event)">
                            Payement Gateway
                        </nuxt-link>
                        <nuxt-link to="/Services/MobileLending" @click="toggleDropdown($event)">
                            Mobile Lending
                        </nuxt-link>
                        <nuxt-link to="/Services/PayementChannels" @click="toggleDropdown($event)">
                            Payement Channels
                        </nuxt-link>
                        <nuxt-link to="/Services/Games&Lotteries" @click="toggleDropdown($event)">
                            Games & Lotteries
                        </nuxt-link>
                        <nuxt-link to="/Services/More" @click="toggleDropdown($event)">
                            More
                        </nuxt-link>
                    </div>
                </div>
            <nuxt-link to="/ContactUs">
                CONTACT
            </nuxt-link>
                <nuxt-link to="/#solutions" class="nav-btn1">
                Lets Enjoy
                </nuxt-link>
        </div>
      </div>
  </nav>
</template>

<script>
export default {
    data(){

        return{
            menuOpen: false
        }
    }, 
  methods: {
            toggleDropdown () {
                this.menuOpen = !this.menuOpen
            },
                toggleNav (event) {
                    event.currentTarget.classList.toggle('is-active')
                }
            }
}
</script>

<style>
    .bg-transparent1{
        display: flex;
        align-items:center;
        justify-content: space-between;
        z-index: 999;
        padding-right: 20px;
    }
    .logo1{
        width: 20%;
        max-width: 100px;
    }
    .mobile-menu1{
        width: 20px;
    }
    .navigation1{
        position: relative;
    }
    .nav-links1{
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
        padding:20px;
        visibility: hidden;
    }
    .nav-button1{
        color: var(--navblue); 
        font-weight: 600;
        display: flex;
        align-items: center;
        font-size: 1rem;
        cursor: pointer;
    }
    .nav-btn1{
        padding: 5px 20px;
        color: var(--white);
        background-color: var(--red);
        border-radius: 24px;
        align-items: center;
        z-index: 999;
    }
    .dropdown1{
        position: relative;
    }
    .dropdown-links1{
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
    .dropdown-links1 a{
        padding:10px;
       width: 180px;
    }
    .dropdown-links1 a:hover{
        background: var(--footerblue);
    }
    .is-active + .dropdown-links1{
        visibility: visible !important; 
    }
    .navigation1 .is-active + .nav-links1{
        visibility: visible;
    }
    @media only screen and (max-width: 800px) {
        .nav-links1{
            width: 100vw;
        }
    }
    @media only screen and (min-width: 800px) {
        .nav-links1{
            visibility: visible;
            flex-direction: row;
            background: transparent;
            position: relative;
            gap:20px;
            margin-left:0;
            color:var(--white);
        }
        .nav-button1{
        color: var(--white); 
    }
        .bg-transparent1{
            gap: 50px;
            align-items: center;
            position: relative;
            justify-content: flex-start;
            width: 90%;
            max-width: 1400px;
            margin:0 auto;
            z-index: 999;
        }
        .mobile-menu1{
            display: none;
        }
    }

</style>