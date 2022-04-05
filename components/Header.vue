<template>
  <nav class="bg-transparent" id="fixed" :class="{ 'onScroll': !view.topOfPage}">
      <div class="nav-wrapper">
          <nuxt-link to='/' class="logo">
          <img src="../assets/images/logoblue.png" alt="">
      </nuxt-link>
      <div class="navigation">
        <img class="mobile-menu" src="../assets/images/menu.png" @click="toggleNav($event)"/>
        <div class="nav-links">
            <nuxt-link to="/" class="nav-link">
                HOME
            </nuxt-link>
            <nuxt-link to="/OurStory" class="nav-link">
                OUR STORY
            </nuxt-link>
            <div class="dropdown">
                    <div class="nav-button nav-link" @click="toggleDropdown($event)" :class="menuOpen ? 'is-active' : ''"> 
                        SERVICES
                    </div>
                    <div class="dropdown-links">
                        <nuxt-link to="/Services/Content" class="nav-link" @click="toggleDropdown($event)">
                            Content
                        </nuxt-link>
                        <nuxt-link to="/Services/SMSSolutions" class="nav-link" @click="toggleDropdown($event)">
                            SMS Solutions
                        </nuxt-link>
                        <nuxt-link to="/Services/PayementGateway" class="nav-link" @click="toggleDropdown($event)">
                            Payement Gateway
                        </nuxt-link>
                        <nuxt-link to="/Services/MobileLending" class="nav-link" @click="toggleDropdown($event)">
                            Mobile Lending
                        </nuxt-link>
                        <nuxt-link to="/Services/PayementChannels" class="nav-link" @click="toggleDropdown($event)">
                            Payement Channels
                        </nuxt-link>
                        <nuxt-link to="/Services/Games&Lotteries" class="nav-link" @click="toggleDropdown($event)">
                            Games & Lotteries
                        </nuxt-link>
                    </div>
                </div>
            <nuxt-link to="/ContactUs" class="nav-link">
                CONTACT
            </nuxt-link>
                <nuxt-link to="/#solutions" class="nav-btn">
                Lets Engage
                </nuxt-link>
        </div>
      </div>
      </div>
  </nav>
</template>

<script>

export default {
    data(){
        return{
            menuOpen: false,
            view: {
                topOfPage: true
            }
        }
    }, 
    beforeMount() {
        window.addEventListener('scroll', this.handleScroll)
    },
    methods: {
        toggleDropdown () {
            this.menuOpen = !this.menuOpen
        },
        toggleNav (event) {
            event.currentTarget.classList.toggle('is-active')
        },
        handleScroll(){
        if(window.pageYOffset>0){
            if(this.view.topOfPage) this.view.topOfPage = false
        } else {
            if(!this.view.topOfPage) this.view.topOfPage = true
        }
        }
    }
}

</script>

<style>
    .nav-wrapper{
        display: flex;
        align-items:center;
        justify-content: space-between;
        z-index: 999;
    }
    .onScroll{
        background: var(--white);
        box-shadow: -3px 3px 20px rgba((0,0,0,.2  ));
    }
    .logo{
        width: 15%;
        max-width: 100px;
    }
    .mobile-menu{
        margin-right: 20px;
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
        padding:20px;
        visibility: hidden;
    }
    .nav-links .nuxt-link-exact-active{
        color: var(--active);
    }
    .nav-links .nuxt-link-exact-active:before{
            content: '';
            position: absolute;
            width: 100%;
            height: 2px;
            bottom: 0;
            left: 0;
            background-color: var(--active);
        }
    .nav-button{
        color: var(--navblue); 
        font-weight: 600;
        display: flex;
        align-items: center;
        font-size: 1rem;
        cursor: pointer;
    }
    .nav-btn:hover,
    .nav-btn:focus{
        background: var(--activered);
    }
    .nav-btn{
        padding: 5px 20px;
        color: var(--white) !important;
        background-color: var(--red);
        border-radius: 24px;
        align-items: center;
        z-index: 999;
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
       z-index: 99999;
       left: -50px;
       top: 20px;
    }
    .dropdown-links a{
        padding:10px;
       width: 180px;
    }
    .dropdown-links a:hover{
        background: var(--footerblue);
    }
    .is-active + .dropdown-links{
        visibility: visible !important; 
    }
    .navigation .is-active + .nav-links{
        visibility: visible;
    }
    @media only screen and (max-width: 800px) {
        .nav-links{
            width: 100vw;
        }
    }
    @media only screen and (min-width: 800px) {
        .nav-links{
            visibility: visible;
            flex-direction: row;
            background: transparent;
            position: relative;
            gap:20px;
            margin-left:0;
        }
        .nav-link:after{
            content: '';
            position: absolute;
            width: 100%;
            transform: scaleX(0);
            height: 2px;
            bottom: 0;
            left: 0;
            background-color: var(--active);
            transform-origin: bottom right;
            transition: transform 0.25s ease-out;
        }
        .nav-link{
            display: inline-block;
            position: relative;
            color: var(--navblue);
        }
        .nav-link:hover{
            color: var(--active);
        }
        .dropdown-links .nav-link{
            color: var(--white);
        }
        .nav-link:hover:after,
        .nav-link:focus:after{
            transform: scaleX(1);
            transform-origin: bottom left;
        }
        .nav-wrapper{
            gap: 50px;
            align-items: center;
            position: relative;
            justify-content: flex-start;
            padding: 0 calc((100vw - 1250px)/2);
        }
        .mobile-menu{
            display: none;
        }
    }

</style>