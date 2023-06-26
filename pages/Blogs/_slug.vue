<template>
  <div>
    <div class="individual-blog">
      <!-- Nav component -->
      <Nav />
      <div class="each-blog"></div>
      <!-- Blognav component -->
      <Blognav />
      <div v-if="!blogPostsData">
      </div>
      <div v-else class="blog-space" v-for="data in blogPostsData" :key="data.id">
        <!-- Blog title -->
        <div class="blog-title">
          <h3>{{ data.title.rendered }}</h3>
        </div>
        <!-- Blog post content -->
        <div class="blog-post">
          <img class="float-left mr-3" :src="data.acf.image">
          <div v-html="data.content.rendered"></div>
        </div>
        <!-- Post link -->
        <div class="post-link">
          <!-- If else statements to allow data to be fetched whether the url &url title is null or defined -->
          <a v-if="data.acf.add_url && data.acf.add_url.url" :href="data.acf.add_url.url" class="get-post">{{
            data.acf.add_url.title }}</a>
          <a v-else-if="data.acf.add_url && !data.acf.add_url.url" class="get-post">{{ data.acf.add_url.title }}</a>
          <a v-else-if="data.acf.add_url === undefined"></a>
          <a v-else>{{ data.acf.add_url.title }}</a>
        </div>
      </div>
    </div>

    <!-- You may also like section -->
    <div class="may-likes">
      <h2>You may also like</h2>
      <div class="may-likes-wrapper">
        <div class="may-like-card" v-for="like in displayedLikes" :key="like.id">
          <div class="may-like">
            <div may-like-img>
              <img :src="like.acf.image" alt="">
            </div>
            <!-- Like title -->
            <h4 class="may-like-title">{{ like.title.rendered }}</h4>
            <!-- Truncated like content -->
            <p class="may-like-details" v-html="truncateContent(like.content.rendered)"></p>
            <!-- Like link -->
            <nuxt-link :to="`/blogs/${like.slug}`"  class="like-button">Read more</nuxt-link>          
          </div>
        </div>
      </div>
      <!-- Like arrow for previous slide -->
      <div class="like-arrow like-left" @click="likePreviousSlide">
        <i class="fas fa-chevron-left"></i>
      </div>
      <!-- Like arrow for next slide -->
      <div class="like-arrow like-right" @click="likeNextSlide">
        <i class="fas fa-chevron-right"></i>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      // Current slug
      slug: this.$route.params.slug,
      // Data for related posts
      relatedPostsData: [],
      // Data for blog posts
      blogPostsData: [],
      // Number of like items per slide on the You may like section
      likeItemsPerSlide: 4,
      // Current index for like items
      likeCurrentIndex: 0,
    };
  },
  created() {
    // Fetch blog and related post data
    this.getPost();
  },
  watch: {
    '$route.params.slug': function() {
      // Update the slug when the route parameter changes
      this.slug = this.$route.params.slug;
      // Fetch the updated post data
      this.getPost();
    },
  },
  methods: {
    getPost() {
      // Fetch related posts data
      axios.get(`http://localhost/wordpress/wp-json/wp/v2/posts`)
        .then(response => {
          this.relatedPostsData = response.data;
        })
        .catch(error => {
          console.log(error);
        });
      // Fetch blog posts data based on the current slug
      axios.get(`http://localhost/wordpress/wp-json/wp/v2/posts?slug=${this.slug}`)
        .then(response => {
          this.blogPostsData = response.data;
        })
        .catch(error => {
          console.log(error);
        });
      // Fetch events posts data based on the current slug
      axios.get(`http://localhost/wordpress/wp-json/wp/v2/events?slug=${this.slug}`)
        .then(response => {
          this.blogPostsData = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    },
    truncateContent(content) {
      // Set the maximum length of the trimmed content
      const maxLength = 100;
      if (content.length > maxLength) {
        // Truncate the content and append ellipsis
        return content.substring(0, maxLength) + '...';
      } else {
        // Return the content as is if it doesn't exceed the maximum length
        return content;
      }
    },
    likePreviousSlide() {
      if (this.likeCurrentIndex > 0) {
        // Decrement the current index to move to the previous slide
        this.likeCurrentIndex -= this.likeItemsPerSlide;
      }
    },
    likeNextSlide() {
      const maxIndex = this.relatedPostsData.length - this.likeItemsPerSlide;
      if (this.likeCurrentIndex < maxIndex) {
        // Increment the current index to move to the next slide
        this.likeCurrentIndex += this.likeItemsPerSlide;
      }
    },
  },
  computed: {
    displayedLikes() {
      // Start index for the displayed likes
      const start = this.likeCurrentIndex;
      // End index for the displayed likes
      const end = start + this.likeItemsPerSlide;
      // Slice the relatedPostsData array based on the start and end indices
      return this.relatedPostsData.slice(start, end);
    },
  },
};
</script>


<style>
.individual-blog {
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.each-blog {
  background-image: url('../../assets/images/blogbg.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 70vh;
  position: relative;
  z-index: 0;
}


.blog-title {
  margin: 20px 110px;
  text-align: left;
}

.blog-title h3 {
  font-size: 24px;
  font-weight: bold;
}

.blog-post {
  margin: 20px 100px;
  padding: 20px;
  background-color: #fff;
  border-radius: 5px;
  overflow: hidden; 
}

.blog-post img {
  float: left;
  margin-right: 20px;
  width: 300px;
  height: 300px;
}

.blog-post p {
  margin-bottom: 10px;
  font-size: 14px;
  line-height: 1.5;
}

.post-link .get-post {
  background-color: #1B75BC;
  position: relative;
  color: white;
  padding: 10px 40px 10px 20px;
  border-radius: 50px;
  text-decoration: none;
  display: inline-block;
  margin-bottom: 50px;
  margin-left: 120px;
}

.post-link .get-post::after {
  content: "\2192";
  /* unicode for right arrow */
  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%);
  font-size: 20px;
}

.may-likes {
  background-color: #ECF9FA;
  padding-bottom: 50px;
}

.may-likes h2 {
  color: var(--black);
  font-weight: bold;
  font-size: 2rem;
  padding: 50px 100px;
}

.may-likes-wrapper {
  margin-top: 50px;
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  height: 100%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
  justify-content: center;
}

.may-like-card {
  background-color: #fff;
  border-radius: 15px;
  padding: 10px 10px 70px 10px;
}

.may-like-title {
  padding-top: 10px;
  padding-left: 10px;
  font-size: 1.2rem;
  font-weight: 600;
}

.may-like-details {
  font-weight: 100;
  line-height: 1.1;
  padding: 10px 0 30px 10px;
  text-align: left;
}

.get-may-like {
  text-align: center;
  background: #1B75BC;
  color: var(--white);
  margin-bottom: 50px;
  margin-left: 10px;
  padding: 5px 10px;
  border-radius: 15px;
  font-weight: bold;
  font-size: .8rem;
}

.like-arrow {
  position: absolute;
  top: 50%;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
}

.like-left {
  left: 10px;
}

.like-right {
  right: 10px;
}

.like-button{
text-align: center;
background: #1B75BC;
color: var(--white);
margin-bottom: 50px;
margin-left: 10px;
padding: 5px 10px;
border-radius: 15px;
font-weight: bold;
font-size: .8rem;
}
</style>

