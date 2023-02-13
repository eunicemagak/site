<template>
<div class="main">
  <Nuxt />
  <Policy v-if="policy" class="policy bg-white w-full max-w-screen-xl rounded-lg"/>
  <Footer/>
</div>
</template>
<script>
  export default {
    data() {
      return {
        policy: ''
      }
    },
    mounted(){
      this.$bus.$on('hide', () => {
        this.policy = false
      })
      console.log(
        localStorage.getItem("Cookies")
      )
      if(localStorage.getItem("Cookies") === null){
        this.policy = true
      }
    },
  }
</script>
<style>
.policy{
  position: fixed;
  bottom: 10px;
  left: 50%;
  transform: translateX(-50%);
  z-index:99999;
}
.main{
  background: var(--mainwhite) !important;
}
</style>