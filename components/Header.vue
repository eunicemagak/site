<template>
  <nav class="bg-transparent">
      <div class="logo">
          <img src="../assets/images/logowhite.png" alt="">
      </div>
      <div class="nav-links">
          <nuxt-link to="/">
              HOME
          </nuxt-link>
          <nuxt-link to="/OurStory">
              OUR STORY
          </nuxt-link>
          <nuxt-link to="/Services">
              SERVICES
          </nuxt-link>
          <nuxt-link to="/ContactUs">
              CONTACT
          </nuxt-link>
          <nuxt-link to="/" class="nav-btn">
              Lets Enjoy
          </nuxt-link>
      </div>
  </nav>
</template>

<script>


export default {
    
}
</script>

<style>
    nav{
        display: flex;
        align-items: center;
        padding: 0.5rem calc((100vw - 1500px) / 2);
        background-color: transparent;
        position: absolute;
        top:0;
    }
    .logo{
        top: 41px;
        left: 220px;
        width: 77px;
        height: 94px;
    }
    .nav-links{
        color: var(--navblue); 
        font-weight: 600;
        display: flex;
        gap: 50px;
        margin-left: 100px;
        align-items: center;
        font-size: 16px;
        color: #FFFFFF;
    }
    .nav-btn{
        padding: 5px 20px;
        color: var(--white);
        background-color: var(--red);
        border-radius: 24px;
        align-items: center;
        z-index: 999;
    }
</style>