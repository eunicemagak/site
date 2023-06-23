<template>
    <div class="award">
        <div class="award-img">
            <img :src="image" alt="">
        </div>
        <h4 class="award-title">
            {{ title }}
        </h4>
        <div class="award-details" v-html="content"></div>
    </div>
</template>

<script>
export default {
    name: 'awardCard',
    props: ['image', 'content', 'title']

}
</script>