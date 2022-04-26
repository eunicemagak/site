<template>
      <div class="dropdown-links">
          <nuxt-link to="/Services/Content">
              Content
          </nuxt-link>
          <nuxt-link to="/Services/SMSSolutions">
              SMS Solutions
          </nuxt-link>
          <nuxt-link to="/Services/PaymentGateway">
              Payment Gateway
          </nuxt-link>
          <nuxt-link to="/Services/MobileLending">
              Mobile Lending
          </nuxt-link>
          <!-- <nuxt-link to="/Services/PaymentChannels">
              Payment Channels
          </nuxt-link> -->
          <nuxt-link to="/Services/Games&Lotteries">
              Games & Lotteries
          </nuxt-link>
          <nuxt-link to="/Services/More">
              More
          </nuxt-link>
      </div>
  
</template>

<script>
export default {
    name: 'dropdown',
}
</script>
    
<style>
    .dropdown-links{
       display: flex;
       flex-direction: column; 
       align-items: center;
       background: var(--navblue);
       color: var(--white);
       position: absolute;
       top: 120px;
       left: 600px;
}
    .dropdown-links a{
        padding: 10px;
    }
</style>