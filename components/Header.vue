<template>
  <nav class="bg-transparent">
      <div class="logo">
          <img src="../assets/images/logoblue.png" alt="">
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
        padding: 0 150px;
    }
    .nav-links{
        color: var(--navblue); 
        font-weight: 600;
        display: flex;
        gap: 50px;
        margin-left: 100px;
        align-items: center;
        font-size: 16px;
    }
    .nav-btn{
        padding: 5px 20px;
        color: var(--white);
        background-color: var(--red);
        border-radius: 24px;
        align-items: center;
    }
</style>