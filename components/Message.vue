<template>
  <div class="cta fixed">
      <img src="../assets/images/cta.svg" alt="" @click="toggleCta($event)">
        <div class="cta-active">
            <div class="cta-header">
                <h4 class="cta-title">Hello</h4>
                <h4 class="cta-close" @click="toggleCta2($event)">X</h4>
            </div>
            <p class="cta-main">
                Thank you for visiting our website, our agents are always here to provide support to you whenever you require. Kindly chat with us here so we can support you.
            </p>
            <div class="cta-footer">
                <div class="top">
                    <p>Roamtech</p>
                    <p>a minute ago</p>
                </div>
                <input type="text" placeholder="Reply here ...">
            </div>
        </div>
  </div>
</template>

<script>
export default {
    methods: {
            toggleCta (event) {
                event.currentTarget.classList.toggle('is-active')
            },
            toggleCta2 (event) {
                event.currentTarget.classList.toggle('is-active')
            }
        }
}
</script>

<style>
    .cta{
       display: flex;
       flex-direction: column; 
       justify-content: center;
       align-items: center;
        width: 100px;
        position: fixed;
        right: 0;
        top: 85vh;
        z-index: 999;
        cursor: pointer;
    }
    .cta img{
        width:100%;
    }
    .cta-active{
       display: flex;
       flex-direction: column; 
       color: var(--white);
       visibility: hidden;
       position: absolute;
       z-index: 999;
       top: -270px;
       padding: 20px;
    }
    .cta .is-active + .cta-active{
        visibility: visible !important; 
    }
    .cta-header{
        display: flex;
        justify-content: space-between;
        font-weight: bold;
       background: var(--navblue);
        padding: 10px;
       border-radius: 10px 10px 0 0;
    }
    .cta-main{
        font-size: .8rem;
       background: var(--navblue);
        padding: 10px;
    }
    .cta-footer{
       display: flex;
       flex-direction: column; 
        background: var(--footerblue);
        padding: 10px 10px 15px 10px;
        gap: 5px;
       border-radius: 0 0 10px 10px;
    }
    .top{
        display: flex;
        justify-content: space-between;
        font-size: .7rem;
    }
    .cta-active input{
        padding: 5px;
        border-radius: 2px;
        color: var(--black);
    }
</style>
