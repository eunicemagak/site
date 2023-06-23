<template>
  <div>
    <div class="individual-blog">
      <Nav />
      <div class="each-blog"></div>
      <Blognav />
      <div v-if="!blogPostsData">
        loading....
      </div>
      <div v-else class="blog-space" v-for="data in blogPostsData" :key="data.id">
    <div class="blog-title">
      <h3>{{ data.title.rendered }}</h3>
    </div>
    <div class="blog-post">
      <img class="float-left mr-3" :src="data.acf.image">
      <div v-html="data.content.rendered"></div>
    </div>
    <div class="post-link">
      <nuxt-link :to="data.link" class="get-post">Get Bulk sms
        Read More
      </nuxt-link>
    </div>
  </div>
    </div>

    <div class="may-likes">
      <h2>You may also like</h2>
      <div class="may-likes-wrapper">
        <div class="may-like-card" v-for="like in relatedPostsData" :key="like.id">
          <div class="may-like">
            <div may-like-img>
              <img :src="like.acf.image" alt="">
            </div>
            <h4 class="may-like-title">
              {{ like.title.rendered }}
            </h4>
            <p class="may-like-details" v-html="like.content.rendered"></p>
            <nuxt-link :to="like.link" class="get-may-like">
              {{ like.linkText }}
            </nuxt-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template> 

<script>
import axios from 'axios';
export default {
  data() {
    return {
      slug: this.$route.params.slug,
      relatedPostsData: [],
      blogPostsData:[]
    }
  },
  created (){
    this.getPost()
  },
  mounted(){
    console.log(this.slug)
  },
  methods: {
    getPost() {
      console.log(this.slug)
          axios.get('http://localhost/wordpress/wp-json/wp/v2/campaigns')
          .then(response => {
            console.log(response)
              this.relatedPostsData = response.data
            })
          .catch(error => {
              console.log(error)
            })
        axios.get(`http://localhost/wordpress/wp-json/wp/v2/posts?slug=${this.slug}`)
          .then(response => {
            console.log(response)
              this.blogPostsData = response.data
            })
          .catch(error => {
              console.log(error)
            })
        },
  }
}
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
  margin-bottom:50px ;
  margin-left: 120px;
}
.post-link .get-post::after {
  content: "\2192"; /* unicode for right arrow */
  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%);
  font-size: 20px;
}

.may-likes{
background-color:#ECF9FA;
padding-bottom:50px;
}

.may-likes h2{
color: var(--black);
font-weight: bold;
font-size: 2rem;
padding:50px 100px;
}

.may-likes-wrapper{
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

.may-like-card{
background-color:#fff;
border-radius: 15px;
padding: 10px 10px 70px 10px;
}

.may-like-title{
  padding-top:10px;
  padding-left:10px;
  font-size: 1.2rem;
  font-weight: 600;
}

.may-like-details{
  font-weight: 100;
  line-height: 1.1;
  padding: 10px 0 30px 10px;
  text-align: left;
}

.get-may-like{
  text-align: center;
  background: #1B75BC;
  color: var(--white);
  margin-bottom:50px;
  margin-left:10px;
  padding: 5px 10px;
  border-radius: 15px;
  font-weight: bold;
  font-size: .8rem;
}

</style>

