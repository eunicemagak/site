<template>
    <div>
    <Header/>
    <div class="pt-20 flex flex-col gap-5 items-center p-5 w-screen max-w-screen-xl m-auto">
        <div class="text-mainblue font-bold text-lg">
            Our Cookie Policy
        </div>
        <div class="text-center font-light max-w-screen-lg">
            Our website uses “cookies” which store small amounts of information on your
            computer or device to allow certain information from your web browser to be
            collected. Cookies are widely used on the internet and allow a website/portal
            to recognise a user’s device without uniquely identifying the individual using
            the computer. These technologies help to make it easier for you to log on and
            use the site and to provide feedback to us as to which parts of the website
            you visit, so we can assess the effectiveness of the site and provide a better
            user experience or to serve Roamtech Solutions Limited adverts to you whilst
            browsing other sites.
            For more information about cookies, including how to see what cookies have
            been set and how to manage, block and delete them,
            see <a href="https://allaboutcookies.org/" class="text-mainblue">www.allaboutcookies.org</a>. You may also be able to configure your
            browser not to accept cookies, although please bear in mind that this may
            affect your ability to use the services we provide.
        </div>
    </div>
    </div>
</template>
<script>
    import Header from '~/components/Header.vue';
    export default {
    components: {
        Header,
    },
  }
</script>