<template>
  <div class="campaign">
    <!-- Campaign image -->
    <div class="campaign-img">
      <img :src="image" alt="">
    </div>
    <!-- Campaign title -->
    <h4 class="campaign-title">
      {{ title }}
    </h4>
    <!-- Campaign details -->
    <div class="campaign-details" v-html="content"></div>

    <!-- Campaign link button -->
    <a :href="URL" class="get-campaign">{{ linkTitle }}</a>
  </div>
</template>
  
<script>
export default {
  name: 'CampaignCard',
  props: ['image', 'content', 'title', 'linkTitle', 'URL'],
};
</script>
  

