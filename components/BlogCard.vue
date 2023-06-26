<template>
  <div class="card blogcontent1">
    <!-- Card image -->
    <div class="card-image">
      <img :src="image" alt="Image description" />
    </div>
    <!-- Card text with link to blog -->
    <nuxt-link :to="'blogs/' + slug" class="card-text">
      <!-- Blog title -->
      <h3>{{ title }}</h3>
      <!-- Blog content -->
      <div v-html="content"></div>
      <!-- Read more button linked to the slug -->
      <nuxt-link :to="`blogs/${slug}`" class="button">Read more</nuxt-link>
    </nuxt-link>
  </div>
</template>
  
<script>
export default {
  name: 'blogCard',
  props: ['image', 'content', 'slug', 'title']
}
</script>
  