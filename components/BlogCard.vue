<template>
    <div class="card blogcontent1">
        <div class="card-image">
            <img :src="image" alt="Image description" />
        </div>
        <nuxt-link :to="'blogs/' + slug" class="card-text">
            <h3>{{ title }}</h3>
            <div v-html="content"></div>
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