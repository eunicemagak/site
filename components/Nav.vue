<template>
    <nav class="bg-transparent1" id="fixed" :class="{ 'onScrol': !view.topOfPage }">
        <div class="nav-wrapper1">
            <nuxt-link to='/' class="logo1">
                <img src="../assets/images/logowhite.png" alt="">
            </nuxt-link>
            <div class="navigation1">
                <img class="mobile-menu1" src="../assets/images/menuwhite.png" @click="toggleNav($event)" />
                <div class="nav-links1">
                    <nuxt-link to="/" class="nav-link1">
                        HOME
                    </nuxt-link>
                    <nuxt-link to="/OurStory" class="nav-link1">
                        OUR STORY
                    </nuxt-link>
                    <div class="dropdown1">
                        <div class="nav-button1 nav-link1" @click="toggleDropdown($event)"
                            :class="menuOpen ? 'is-active' : ''">
                            SERVICES
                        </div>
                        <div class="dropdown-links1">
                            <nuxt-link to="/Services/EmaliChat" class="nav-link1" @click="toggleDropdown($event)">
                                Emalichat
                            </nuxt-link>
                            <nuxt-link to="/Services/Content" class="nav-link1" @click="toggleDropdown($event)">
                                Content
                            </nuxt-link>
                            <nuxt-link to="/Services/SMSSolutions" class="nav-link1" @click="toggleDropdown($event)">
                                SMS Solutions
                            </nuxt-link>
                            <nuxt-link to="/Services/PaymentGateway" class="nav-link1" @click="toggleDropdown($event)">
                                Payment Gateway
                            </nuxt-link>
                            <nuxt-link to="/Services/MobileLending" class="nav-link1" @click="toggleDropdown($event)">
                                Mobile Lending
                            </nuxt-link>
                            <nuxt-link to="/Services/Games&Lotteries" class="nav-link1" @click="toggleDropdown($event)">
                                Games & Lotteries
                            </nuxt-link>
                        </div>
                    </div>
                    <nuxt-link to="/Blogs" class="nav-link1">
                        BLOG
                    </nuxt-link>
                    <nuxt-link to="/ContactUs" class="nav-link1">
                        CONTACT
                    </nuxt-link>
                    <nuxt-link to="/#solutions" class="nav-btn1">
                        Lets Engage
                    </nuxt-link>
                </div>
            </div>
        </div>
    </nav>
</template>

<script>

export default {
    data() {
        return {
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
        toggleDropdown() {
            this.menuOpen = !this.menuOpen
        },
        toggleNav(event) {
            event.currentTarget.classList.toggle('is-active')
        },
        handleScroll() {
            if (window.pageYOffset > 0) {
                if (this.view.topOfPage) this.view.topOfPage = false
            } else {
                if (!this.view.topOfPage) this.view.topOfPage = true
            }
        }
    }
}

</script>

<style>
.nav-wrapper1 {
    display: flex;
    align-items: center;
    justify-content: space-between;
    z-index: 999;
}

.onScrol {
    background: var(--navblue);
    box-shadow: -3px 3px 20px rgba((0, 0, 0, .2));
}

.logo1 {
    width: 10%;
    max-width: 80px;
}

.mobile-menu1 {
    margin-right: 20px;
    width: 20px;
}

.navigation1 {
    position: relative;
}

.nav-links1 {
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
    right: 0;
    padding: 20px;
    visibility: hidden;
}

.nav-button1 {
    color: var(--navblue);
    font-weight: 600;
    display: flex;
    align-items: center;
    font-size: 1rem;
    cursor: pointer;
}

.nav-btn1 {
    padding: 5px 20px;
    color: var(--white);
    background-color: var(--red);
    border-radius: 24px;
    align-items: center;
    z-index: 999;
}

.nav-btn1:hover,
.nav-btn1:focus {
    background: var(--activered);
}

.dropdown1 {
    position: relative;
}

.dropdown-links1 {
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

.dropdown-links1 a {
    padding: 10px;
    width: 180px;
}

.dropdown-links1 a:hover {
    background: var(--footerblue);
}

.is-active+.dropdown-links1 {
    visibility: visible !important;
}

.navigation1 .is-active+.nav-links1 {
    visibility: visible;
}

@media only screen and (max-width: 800px) {
    .nav-links1 {
        width: 110vw;
    }
}

@media only screen and (min-width: 800px) {
    .nav-links1 {
        visibility: visible;
        flex-direction: row;
        background: transparent;
        position: relative;
        gap: 20px;
        margin-left: 0;
        color: var(--white);
    }

    .nav-button1 {
        color: var(--white);
    }

    .nav-links1 .nuxt-link-exact-active:before {
        content: '';
        position: absolute;
        width: 100%;
        height: 2px;
        bottom: 0;
        left: 0;
        background-color: var(--white);
    }

    .nav-link1:after {
        content: '';
        position: absolute;
        width: 100%;
        transform: scaleX(0);
        height: 2px;
        bottom: 0;
        left: 0;
        background-color: var(--white);
        transform-origin: bottom right;
        transition: transform 0.25s ease-out;
    }

    .nav-link1 {
        display: inline-block;
        position: relative;
        color: var(--white);
    }

    .dropdown-links1 .nav-link1 {
        color: var(--white);
    }

    .nav-link1:hover:after,
    .nav-link1:focus:after {
        transform: scaleX(1);
        transform-origin: bottom left;
    }

    .nav-wrapper1 {
        gap: 50px;
        align-items: center;
        position: relative;
        justify-content: flex-start;
        padding: 0 calc((100vw - 1250px)/2);
    }

    .mobile-menu1 {
        display: none;
    }
}</style>