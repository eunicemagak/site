<template>
  <nuxt-link :to="`blogs/${slug}`" class="event">
    <!-- Event image -->
    <div event-img>
      <img :src="image" alt="">
    </div>
    <!-- Event title -->
    <h4 class="event-title">
      {{ title }}
    </h4>
    <!-- Event details -->
    <div class="event-details" v-html="content"></div>
  </nuxt-link>
</template>
  
<script>
export default {
  name: 'eventCard',
  props: ['image', 'content', 'title', 'slug']
}
</script>
  