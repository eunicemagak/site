<template>
  <div>
    <div class="blogs">
      <Nav />
      <div class="blog">
        <div class="blog-wrapper">
          <div>
            <h1>OUR BLOG</h1>
            <p>
              Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy
              nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non
              ummy nibh euismod tincidunt ut la ore et
            </p>
          </div>
        </div>
      </div>

      <Blognav />

      <!-- trending blogs   -->
      <div class="trending" id="trending">
        <div class="title">
          <h2>{{ trendingTitle }}</h2>
        </div>
        <div class="container">
          <div class="trending-wrapper">
            <div class="trending-content">
              <div v-for="(blog, index) in paginatedBlogContents" :key="index" class="card blogcontent1">
                <BlogCard :image=blog.acf.image :title=blog.title.rendered :slug=blog.slug
                  :content="trimContent(blog.content.rendered)" />
              </div>

              <div class="pagination">
                <button class="pagination-arrow prev" @click.prevent="goToPreviousPage"><i
                    class="fas fa-chevron-left"></i></button>

                <ul class="pagination-list">
                  <li v-for="(page, index) in totalPages" :key="index">
                    <button class="pagination-link" :class="{ active: currentPage === page }"
                      @click.prevent="goToPage(page)">{{ page }}</button>
                  </li>
                </ul>

                <button class="pagination-arrow next" @click.prevent="goToNextPage"><i
                    class="fas fa-chevron-right"></i></button>
              </div>

            </div>
          </div>
          <div class="sidebar">
            <div class="facebook-page">
              <p>{{ facebookPage }}</p>
            </div>
            <div class="social-container">
              <h5>Follow us on</h5>
              <div class="social-icons">
                <a href="https://www.linkedin.com/company/roamtech-solutions/">
                  <font-awesome-icon :icon="['fab', 'linkedin-in']" class="social-icon" />
                </a>
                <font-awesome-icon :icon="['fab', 'instagram']" class="social-icon" />
                <a href="https://twitter.com/roamtech?lang=en">
                  <font-awesome-icon :icon="['fab', 'twitter']" class="social-icon" />
                </a>
                <a href="https://m.facebook.com/profile.php?id=346148706193152">
                  <font-awesome-icon :icon="['fab', 'facebook-f']" class="social-icon" />
                </a>
              </div>
            </div>
          </div>
        </div>

        <!-- Campaigns   -->
        <div class="campaigns" id="campaigns">
          <h2>{{ campaignsTitle }}</h2>
          <div class="campaigns-wrapper">
            <div v-for="(campaign, index) in campaignContents" :key="index" class="campaign-card">
              <CampaignCard :image=campaign.acf.image :title=campaign.title.rendered :slug=campaign.slug
                :content=campaign.content.rendered />
            </div>
          </div>
          <hr>

          <!-- Events   -->

          <div class="events" id="events">
            <h2>{{ eventsTitle }}</h2>
            <div class="events-wrapper">
              <div v-for="(event, index) in eventContents" :key="index" class="event-card">
                <EventCard :image=event.acf.image :title=event.title.rendered :content=event.content.rendered />
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Awards and Recognition   -->
      <div class="awards" id="awards">
        <div class="awards-container">
          <h2>{{ awardsTitle }}</h2>
          <p>{{ awardsDescription }}</p>
        </div>
        <div class="awards-wrapper">
          <div v-for="(award, index) in awards" :key="index" class="award">
            <AwardCard :image=award.acf.image :title=award.title.rendered :content=award.content.rendered />
          </div>


        </div>
        <div class="awards-arrow arrow-left"><i class="fas fa-chevron-left"></i></div>
        <div class="awards-arrow arrow-right"><i class="fas fa-chevron-right"></i></div>
      </div>



      <!-- Gallery   -->
      <div class="gallery" id="gallery">
        <div class="gallery-container">
          <h2>{{ galleryTitle }}</h2>
          <h6>{{ galleryDescription }}</h6>
          <div class="gallery-images">
            <div v-for="(gallery, index) in galleryImages" :key="index" class="gallery-img">
  <nuxt-link to="/Gallery">
    <div
      :class="['image-container', { 'active-image': index === activeImageIndex }]"
    >
      <img :src="gallery.acf.image" alt="">
      <div class="image-overlay">
        <p class="gallery-title">{{ gallery.title.rendered }}</p>
        <p class="gallery-content get-gallery" v-html="gallery.content.rendered"></p>
      </div>
    </div>
              </nuxt-link>
            </div>
          </div>
          <div class="gallery-pagination">
            <div v-for="(image, index) in galleryImages" :key="index" class="dot"
              :class="{ 'active': index === activeImageIndex }"></div>
          </div>
        </div>
      </div>



    </div>
  </div>
</template>

<script>
import BlogCard from '../../components/BlogCard.vue';
import CampaignCard from '../../components/CampaignCard.vue';
import EventCard from '../../components/EventCard.vue';
import AwardCard from '../../components/AwardCard.vue';

export default {
  props: ['image', 'content', 'slug', 'title'],
  data() {
    return {
      trendingTitle: 'Trending',
      blogContents: [],
      pagination: [1, 2, 3, 4, 5],
      postsPerPage: 2,
      currentPage: 1,
      facebookPage: 'Roamtech Facebook Page',
      campaignsTitle: 'CAMPAIGNS',
      campaignContents: [],
      eventsTitle: 'EVENTS',
      eventContents: [],
      awardsTitle: "AWARDS & RECOGNITION",
      awardsDescription: "Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq u",
      awards: [],
      galleryTitle: "OUR GALLERY",
      galleryDescription: "Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq uam bony non ummy nibh euismod tincidunt ut la ore et Yolor sit amet, consectetuer adi piscing elit, sed diam non ummy nibh euismod tincidunt ut la ore et dolore magna aliq u",
      galleryImages: [],
      activeImageIndex: 0 // Set the initial active image index
    };
  },
  components: { BlogCard, CampaignCard, EventCard, AwardCard },
  computed: {
    totalPages() {
      return Math.ceil(this.blogContents.length / this.postsPerPage);
    },
    paginatedBlogContents() {
      const startIndex = (this.currentPage - 1) * this.postsPerPage;
      const endIndex = startIndex + this.postsPerPage;
      return this.blogContents.slice(startIndex, endIndex);
    }
  },
  created() {
    this.getPost();
    this.getGallery();
    this.startSlideshow();
  },
  methods: {
    goToPage(page) {
      this.currentPage = page;
    },
    goToPreviousPage() {
      if (this.currentPage > 1) {
        this.currentPage--;
      }
    },
    goToNextPage() {
      if (this.currentPage < this.totalPages) {
        this.currentPage++;
      }
    },
    getPost() {
      this.$axios
        .get('http://localhost/wordpress/wp-json/wp/v2/posts')
        .then(response => {
          this.blogContents = response.data;
        })
        .catch(error => {
          console.error(error);
        });

      this.$axios
        .get('http://localhost/wordpress/wp-json/wp/v2/campaigns')
        .then(response => {
          this.campaignContents = response.data;
        })
        .catch(error => {
          console.error(error);
        });

      this.$axios
        .get('http://localhost/wordpress/wp-json/wp/v2/events')
        .then(response => {
          this.eventContents = response.data;
        })
        .catch(error => {
          console.error(error);
        });

      this.$axios
        .get('http://localhost/wordpress/wp-json/wp/v2/awards')
        .then(response => {
          this.awards = response.data;
          console.log(this.awards);
        })
        .catch(error => {
          console.log(error);
        });
    },
    getGallery() {
      this.$axios
        .get('http://localhost/wordpress/wp-json/wp/v2/gallery')
        .then(response => {
          this.galleryImages = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    },
    startSlideshow() {
    setInterval(() => {
      this.nextImage();
    }, 3000); // Change image every 3 seconds (adjust as needed)
  },
  nextImage() {
    this.activeImageIndex = (this.activeImageIndex + 1) % this.galleryImages.length;
  },
    trimContent(content) {
      const wordLimit = 20; // Define the desired word limit
      const words = content.split(' ');

      if (words.length > wordLimit) {
        const trimmedWords = words.slice(0, wordLimit);
        return `${trimmedWords.join(' ')}...`;
      }

      return content;
    },
  },
};



</script>

<style>
.blog {
  background: url('./assets/images/blogsbg.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 70vh;
  position: relative;
  z-index: 0;
}

.blog::before {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  margin: 0;
  padding: 0;
  width: 100%;
  height: 70%;
  background: linear-gradient(to top,
      rgba(247, 251, 252, 0.9) 0%,
      rgba(247, 251, 252, 0.7) 40%,
      rgba(247, 251, 252, 0) 80%);
  z-index: 1;
}

.blog h1 {
  color: #000;
  font-size: 30px;
  font-weight: bold;
  text-align: center;
}

.blog p {
  color: #000;
  text-align: center;
}

.blog-wrapper {
  position: absolute;
  bottom: 50px;
  /* adjust the value to position the element closer or farther from the bottom */
  left: 50%;
  transform: translateX(-50%);
  text-align: center;
  z-index: 1;
}


.trending {
  padding-bottom: 50px;
}

.trending .title {
  padding-left: 100px;
}

.trending .container {
  display: flex;
  flex-direction: row;
  width: 100%;
}

.trending-content {
  flex: 3;
  padding-left: 100px;
}

.trending-content .card:not(:first-child) {
  margin-top: 20px;
}

.blogcontent1 {
  background-color: #1b75bc;
  height: 400px;
  /* adjust as needed */
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.blogcontent2 {
  background-color: #e6fdffc4;
  height: 400px;
  /* adjust as needed */
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.trending .card {
  display: flex;
  flex-direction: row;
  align-items: center;
}

.card-image {
  flex: 1;
  height: 400px;
}

.card-image img {
  height: 100%;
  width: 100%;
}

.card-text {
  flex: 2;
  display: block;
  text-align: left;
}

.blogcontent1 h3 {
  color: #fff;
  font-weight: bold;
  margin-bottom: 10px;
  margin-left: 10px
}

.blogcontent1 p {
  color: #fff;
  margin-bottom: 10px;
  padding: 10px;
  font-size: 12px;
}

.blogcontent1 .button {
  background-color: #fff;
  color: #000;
  border: none;
  margin-top: 20px;
  margin-left: 15px;
  padding: 5px 20px;
  font-size: 12px;
  border-radius: 15px;
  cursor: pointer;
}

.blogcontent2 h3 {
  color: #000;
  font-weight: bold;
  margin-bottom: 10px;
  margin-left: 10px
}

.blogcontent2 p {
  color: #000;
  margin-bottom: 10px;
  padding: 10px;
  font-size: 12px;
}

.blogcontent2 .button {
  background-color: #1B75BC;
  color: #fff;
  border: none;
  margin-top: 20px;
  margin-left: 15px;
  padding: 5px 20px;
  font-size: 12px;
  border-radius: 15px;
  cursor: pointer;
}

.pagination {
  display: flex;
  justify-content: right;
  background-color: #fff;
  padding: 10px;
}

.pagination-arrow {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #626161;
  border-radius: 4px;
  width: 30px;
  height: 30px;
  margin: 0 5px;
  font-size: 12px;
  color: #fff;
}

.pagination-list {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
}


.pagination-link {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #626161;
  border-radius: 4px;
  width: 30px;
  height: 30px;
  margin: 0 5px;
  font-size: 12px;
  color: #fff;
  text-decoration: none;
}

.pagination-link.active {
  background-color: #007bff;
  color: #fff;
}


.sidebar {
  flex: 1;
  margin-left: 20px;
  padding: 0 20px;
}

.facebook-page {
  background-color: #f2f2f2;
  padding: 10px;
  border-radius: 5px;
  height: 86%;
  margin-bottom: 20px;
}



.social-container {
  background-color: #F26B08;
  display: flex;
  flex-direction: column;
  margin-top: 20px;
  padding: 20px 0px;
  border-radius: 5px;
}

.social-container h5 {
  color: #fff;
  justify-content: left;
  font-weight: bold;
  padding-left: 30px;
}

.social-icons {
  display: flex;
  margin-top: 10px;
  padding-left: 20px;
}

.social-icon {
  width: 20px;
  height: 20px;
  margin: 0 10px;
  color: #fff;
  border-radius: 5px;
  line-height: 30px;
  text-decoration: none;
}


.campaigns {
  background-color: #F7F7F7;
  padding-bottom: 50px;
}

.campaigns h2 {
  color: var(--black);
  font-weight: bold;
  font-size: 2rem;
  padding: 50px 100px;
}

.campaigns-wrapper {
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

.campaign-card {
  background-color: #fff;
  border-radius: 15px;
  padding: 10px 10px 70px 10px;
}

.campaign-title {
  padding-top: 10px;
  padding-left: 10px;
  font-size: 1.2rem;
  font-weight: 600;
}

.campaign-details {
  font-weight: 100;
  line-height: 1.1;
  padding: 10px 0 30px 10px;
  text-align: left;
}

.get-campaign {
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

hr {
  margin: 20px 70px;
}

.events h2 {
  color: var(--black);
  font-weight: bold;
  font-size: 2rem;
  padding: 50px 100px;
}

.events-wrapper {
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

.event-card {
  background-color: #fff;
  border-radius: 15px;
  padding: 10px 10px 70px 10px;
}

.event-title {
  padding-top: 10px;
  padding-left: 10px;
  font-size: 1.2rem;
  font-weight: 600;
}

.event-details {
  font-weight: 100;
  line-height: 1.1;
  padding: 10px 0 30px 10px;
  text-align: left;
}


.awards-container {
  background-color: #1B75BC;
  text-align: center;

}

.awards-container h2 {
  font-size: 20px;
  font-weight: bold;
  color: #fff;
  padding-top: 50px;
  margin-bottom: 30px;
}

.awards-container p {
  color: #fff;
  padding-left: 300px;
  padding-right: 300px;
  padding-bottom: 200px;
}

.awards-wrapper {
  width: 60%;
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  justify-content: space-evenly;
  align-items: flex-start;
  gap: 2rem;
  z-index: 2;
  margin-top: -100px;
}

.award-title {
  color: #1B75BC;
  padding-top: 10px;
  padding-left: 10px;
  font-size: 1rem;
  font-weight: 600;
}

.award-details {
  font-size: 0.8rem;
  font-weight: 100;
  line-height: 1.1;
  padding: 10px 0 30px 10px;
  text-align: left;
}

.awards-arrow {
  position: absolute;
  top: 70%;
  transform: translateY(-50%);
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
}

.arrow-left {
  left: 100px;
}

.arrow-right {
  right: 100px;
}


.gallery-container {
  background-color: #000000F2;
  text-align: center;
}

.gallery-container h2 {
  font-size: 20px;
  font-weight: bold;
  color: #fff;
  padding-top: 50px;
  margin-bottom: 30px;
}

.gallery-container h6 {
  color: #fff;
  padding: 0px 300px 20px;
}

.gallery-title {
  font-size: 14px;
  font-weight: bold;
  text-align: left;
}

.gallery-content p {
  font-size: 10px;
  text-align: left;
  padding-right: 50px;

}

.gallery-images {
  padding: 50px 0 80px;
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  height: 100%;
  display: flex;
}

.gallery-container {
  position: relative;
}

.image-container {
  position: relative;
  display: inline-block;
}

.image-container img {
  display: block;
  width: 100%;
  height: auto;
  margin-top: 50px;
}

.image-overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  color: #fff;
  padding: 10px;
}

.get-gallery::after {
  content: "\2192";
  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%);
  font-size: 20px;
}

.gallery-images .gallery-img:nth-child(1) {
  grid-column: span 1;
  z-index: 1;
  transform: translateX(25%) scale(0.5);
}

.gallery-images .gallery-img:nth-child(2),
.gallery-images .gallery-img:nth-child(4) {
  grid-column: span 1.5;
  z-index: 2;
  transform: scale(1);
}

.gallery-images .gallery-img:nth-child(3) {
  grid-column: span 2;
  z-index: 3;
  transform: scale(1.5);
}

.gallery-images .gallery-img:nth-child(5) {
  grid-column: span 1;
  z-index: 1;
  transform: translateX(-25%) scale(0.5);
}


.gallery-pagination {
  display: flex;
  justify-content: center;
  margin-top: 20px;
  padding-bottom: 100px;
}

.dot {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background-color: #ccc;
  margin: 0 5px;
  cursor: pointer;
}

.dot.active {
  background-color: #0069d9;
}</style>
