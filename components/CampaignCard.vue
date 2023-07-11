<template>
  <div class="campaign">
    <!-- Campaign image -->
    <div class="campaign-img">
      <img :src="image" alt="">
    </div>
    <div>
    <!-- Campaign title -->
    <h4 class="campaign-title">
      {{ title }}
    </h4>
    <!-- Campaign details -->
    <div class="campaign-details" v-html="content"></div>
    </div>
<div class="get-campaign">
<!-- Campaign link button -->
<a :href="URL" >{{ linkTitle }}</a>
</div>
    
  </div>
</template>
  
<script>
export default {
  name: 'CampaignCard',
  props: ['image', 'content', 'title', 'linkTitle', 'URL'],
};
</script>
  


