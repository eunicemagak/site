<template>
    <div class="bg-white p-5 rounded-2xl rounded-2xl max-w-screen-xl w-full drop-shadow-2xl">
        <div class="flex flex-col gap-5 items-center lg:flex-row lg:justify-between">
            <div class="text-sm lg:w-2/3">
                We use technology such as cookies on our site to personalise content, provide social media features and  analyse our traffic. By continuing to use our website and/or clicking '<span class="font-bold">Accept</span>', you're agreeing to the use of cookies in accordance with our <nuxt-link to="/Policies/CookiePolicy" class="text-mainblue">Cookies Policy</nuxt-link> and <nuxt-link to="/Policies/PrivacyPolicy" class="text-mainblue">Privacy Policy</nuxt-link>. 
            </div>
            <div>
                <button @click="hide()" class="bg-mainblue py-3 px-5 rounded-lg text-white font-bold">
                    Accept
                </button>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods: {
        hide(){
            localStorage.setItem("Cookies", "Accepted")
            this.$bus.$emit('hide')
        }
    }
}
</script>
<style>
</style>