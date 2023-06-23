<template>
    <div class="event">
        <div event-img>
            <img :src="image" alt="">
        </div>
        <h4 class="event-title">
            {{ title }}
        </h4>
        <div class="event-details" v-html="content"></div>
    </div>
</template>

<script>
export default {
    name: 'eventCard',
    props: ['image', 'content', 'title']

}
</script>