<template>
    <div class="campaign">
        <div campaign-img>
            <img :src="image" alt="">
        </div>
        <h4 class="campaign-title">
            {{ title }}
        </h4>
        <div class="campaign-details" v-html="content"></div>

        <nuxt-link :to="`campaign/${slug}`" class="get-campaign">Read More</nuxt-link>
    </div>
</template>

<script>
export default {
    name: 'campaignCard',
    props: ['image', 'content', 'slug', 'title']

}
</script>