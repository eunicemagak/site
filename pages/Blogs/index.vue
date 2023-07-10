<template>
  <div>
    <div class="blogs">
      <!-- Navigation component -->
      <Nav />
      
      <div class="blog">
        <div class="blog-wrapper">
          <div>
            <h1>OUR BLOG</h1>
            <p>
              Expert insights. Tailored just for you.
            </p>
          </div>
        </div>
      </div>

      <!-- Blog navigation component -->
      <Blognav />

      <!-- Trending blogs section -->
      <div class="trending" id="trending">
        <div class="title">
          <h2>{{ trendingTitle }}</h2>
        </div>
        <div class="container">
          <div class="trending-wrapper">
            <div class="trending-content">
              <!-- Iterate over paginated blog contents -->
              <div v-for="(blog, index) in paginatedBlogContents" :key="index" class="card blogcontent1">
                <!-- Blog Card component -->
                <BlogCard :image=blog.acf.image :title=blog.title.rendered :slug=blog.slug
                  :content="trimContent(blog.content.rendered)" />
              </div>

              <div class="pagination">
                <!-- Previous page button -->
                <button class="pagination-arrow prev" @click.prevent="goToPreviousPage"><i
                    class="fas fa-chevron-left"></i></button>

                <ul class="pagination-list">
                  <!-- Iterate over page numbers -->
                  <li v-for="(page, index) in totalPages" :key="index">
                    <!-- Page number button -->
                    <button class="pagination-link" :class="{ active: currentPage === page }"
                      @click.prevent="goToPage(page)">{{ page }}</button>
                  </li>
                </ul>

                <!-- Next page button -->
                <button class="pagination-arrow next" @click.prevent="goToNextPage"><i
                    class="fas fa-chevron-right"></i></button>
              </div>

            </div>
          </div>
          <div class="sidebar">
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v17.0&appId=227448536808905&autoLogAppEvents=1" nonce="kE2iHewq"></script>          
            <div class="facebook-page" >
 
              <!-- <p>facebook page</p> -->
              <!-- <div  v-for="(fbpost, index) in fbposts" :key="index" class="facebook-page" > -->
              <!-- <div class="fb-content"> -->
              <!-- <p id="facebook-posts"></p>? -->
              <!-- <img :src="fbpost.picture" alt="Feed Image" class="fb-image">
              <p class="fb-message">{{ fbpost.message }}</p>
              <p class="fb-message"> likes:{{ fbpost.likes }}</p> -->
              <!-- <div class="fb-page" 
              data-tabs="events"
              data-href="https://www.facebook.com/rovlexwritings"
              data-width="380"></div> -->
              <!--  -->
              <div class="fb-page" data-href="https://www.facebook.com/roamtech" 
              data-tabs="timeline" data-width="" data-height="" data-small-header="false" 
              data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
              <blockquote cite="https://www.facebook.com/roamtech" class="fb-xfbml-parse-ignore">
                <a href="https://www.facebook.com/roamtech">Roamtech</a>
              </blockquote>
            </div>
    
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
      </div>

      <!-- Campaigns section -->
      <div class="campaigns" id="campaigns">
        <h2>{{ campaignsTitle }}</h2>
        <div class="campaigns-wrapper">
          <!-- Iterate over displayed campaigns -->
          <div v-for="(campaign, index) in displayedCampaigns" :key="index" class="campaign-card">
            <!-- Campaign Card component -->
            <CampaignCard :image="campaign.acf.image" :title="campaign.title.rendered" :slug="campaign.slug" :content="campaigntrimContent(campaign.content.rendered)" 
              :linkTitle="campaign.acf.add_url.title" :URL="campaign.acf.add_url.url" />
          </div>
        </div>
        <div class="campaigns-arrow campaign-left" @click="campaignPreviousSlide">
          <i class="fas fa-chevron-left"></i>
        </div>
        <div class="campaigns-arrow campaign-right" @click="campaignNextSlide">
          <i class="fas fa-chevron-right"></i>
        </div>
        <hr />

        <!-- Events section -->
        <div class="events" id="events">
          <h2>{{ eventsTitle }}</h2>
          <div class="events-wrapper">
            <!-- Iterate over displayed events -->
            <div v-for="(event, index) in displayedEvents" :key="index" class="event-card">
              <!-- Event Card component -->
              <EventCard :image="event.acf.image" :title="event.title.rendered" :content="event.content.rendered" :slug="event.slug"/>
            </div>
          </div>
          <div class="events-arrow events-left" @click="eventspreviousSlide">
            <i class="fas fa-chevron-left"></i>
          </div>
          <div class="events-arrow events-right" @click="eventsnextSlide">
            <i class="fas fa-chevron-right"></i>
          </div>
        </div>
      </div>

      <!-- Awards and Recognition section -->
      <div class="awards" id="awards">
        <div class="awards-container">
          <h2>{{ awardsTitle }}</h2>
          <p>{{ awardsDescription }}</p>
        </div>
        <div class="awards-wrapper">
          <!-- Iterate over displayed awards -->
          <div v-for="(award, index) in displayedAwards" :key="index" class="award">
            <!-- Award Card component -->
            <AwardCard :image="award.acf.image" :title="award.title.rendered" :content="award.content.rendered" />
          </div>
        </div>
        <div class="awards-arrow arrow-left" @click="previousSlide">
          <i class="fas fa-chevron-left"></i>
        </div>
        <div class="awards-arrow arrow-right" @click="nextSlide">
          <i class="fas fa-chevron-right"></i>
        </div>
      </div>

      <!-- Gallery section -->
      <div class="gallery" id="gallery">
        <div class="gallery-container">
          <h2>{{ galleryTitle }}</h2>
          <h6>{{ galleryDescription }}</h6>
          <div class="gallery-images">
            <!-- Iterate over gallery images -->
            <div v-for="(gallery, index) in galleryImages" :key="index" class="gallery-img">
              <nuxt-link to="/Gallery">
                <div :class="['image-container', { 'active-image': index === activeImageIndex }]">
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
            <!-- Iterate over gallery image dots -->
            <div v-for="(image, index) in galleryImages" :key="index" class="dot"
              :class="{ 'active': index === activeImageIndex }"></div>
          </div>
        </div>
      </div>

      <div class="floating-button">
        <a href="http://eepurl.com/iuWsPs" target="_blank" rel="noopener noreferrer">
        <button>Subscribe to our newsletter</button>
        </a>
        <!-- <input type="email" v-model="emailInput" placeholder="Enter your email"> -->
        <!-- <button @click="subscribeToNewsletter">Subscribe to our newsletter</button> -->
        <!-- <button>Subscribe to our newsletter</button>
        <script id="mcjs">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,"script","https://chimpstatic.com/mcjs-connected/js/users/770b5fa4230188b2fbedf56ae/2772da04f451f063b522b039d.js");</script>        
        <p v-if="successMessage">{{ successMessage }}</p>
        <p v-if="errorMessage">{{ errorMessage }}</p>  -->
        <!-- <button>Subscribe to our newsletter</button> -->
      </div>

    </div>
  </div>
</template>


<script>
// import emailjs from 'emailjs-com';s
import BlogCard from '../../components/BlogCard.vue';
import CampaignCard from '../../components/CampaignCard.vue';
import EventCard from '../../components/EventCard.vue';
import AwardCard from '../../components/AwardCard.vue';

export default {
  props: ['image', 'content', 'slug', 'title', 'linkTitle', 'URL'],

  // Data properties
  data() {
    return {
      emailInput: '',
      successMessage: '',
      errorMessage: '',
      // Initialize an empty array to store the fetched Facebook posts
      fbposts: [], 

      trendingTitle: 'Trending',
      // Array to store blog data
      blogContents: [], 
      // Array to store pagination numbers
      pagination: [1, 2, 3, 4, 5], 
      postsPerPage: 2,
      currentPage: 1,
      facebookPage: 'Roamtech Facebook Page',

      campaignsTitle: 'CAMPAIGNS',
      // Array to store campaign data
      campaignContents: [], 
      // Array to store currently displayed campaigns
      displayedCampaigns: [], 
      // Current index of displayed campaigns
      campaigncurrentIndex: 0, 
      // Number of campaigns to display per slide
      campaignitemsPerSlide: 4, 

      eventsTitle: 'EVENTS',
      // Array to store event data
      eventContents: [], 
      // Array to store currently displayed events
      displayedEvents: [], 
      // Number of events to display per slide
      eventItemsPerSlide: 4, 
      // Duration of event slide transition
      eventSlideDuration: 1, 
      // Current index of displayed events
      eventCurrentIndex: 0, 

      awardsTitle: "AWARDS & RECOGNITION",
      awardsDescription: "At Roamtech, we have a great story to tell. We uphold our mission by working hard every day to bring value to our clients and partners. Our unwavering pursuit of excellence in both service and products is not just a testament to our integrity, but also a testament to our belief that it is simply good business practice. When prestigious organizations and companies recognize our efforts, it serves as a powerful affirmation that we are on the right path, guided by our unwavering core values that continue to propel us forward.",
      // Array to store currently displayed awards
      displayedAwards: [], 
      // Number of awards to display per slide
      itemsPerSlide: 3, 
      // Duration of award slide transition
      slideDuration: 5000, 
      // Current index of displayed awards 
      currentIndex: 0, 

      galleryTitle: "OUR GALLERY",
      galleryDescription: "Welcome to our Roamtech gallery. Here is what it looks like to be part of our dedicated team.Telling stories that define us through images!",
      // Array to store gallery images
      galleryImages: [], 
      // Set the initial active image index
      activeImageIndex: 2 
    };
  },

  // Components used in this Vue component
  components: { BlogCard, CampaignCard, EventCard, AwardCard, },

  // Computed properties
  computed: {
    totalPages() {
      // Calculate the total number of pages based on the blog contents and posts per page
      return Math.ceil(this.blogContents.length / this.postsPerPage); 
    },
    paginatedBlogContents() {
       // Calculate the start index of the current page
      const startIndex = (this.currentPage - 1) * this.postsPerPage;
      // Calculate the end index of the current page
      const endIndex = startIndex + this.postsPerPage; 
      // Return the sliced portion of blog contents for the current page
      return this.blogContents.slice(startIndex, endIndex); 
    }
  },

  //create lifecycle hook
  created() {
    // Fetch blog data
    this.getPost(); 
    // Fetch gallery images
    this.getGallery(); 
    // Fetch facebook posts
    // this.fetchFacebookPosts();
  },

  // Methods
  methods: {
    // Pagination methods
    goToPage(page) {
      // Update the current page to the selected page
      this.currentPage = page; 
    },
    goToPreviousPage() {
      if (this.currentPage > 1) {
        // Decrement the current page if it is greater than 1
        this.currentPage--; 
      }
    },
    goToNextPage() {
      if (this.currentPage < this.totalPages) {
        // Increment the current page if it is less than the total pages
        this.currentPage++; 
      }
    },

    validateEmail(email) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(email);
    },

    
  // subscribeToNewsletter() {
  //   // Fetch user's email from the form input field
  //   const userEmail = this.emailInput;

  //   // Check if the email input is empty or invalid
  //   if (!userEmail || !this.validateEmail(userEmail)) {
  //       this.errorMessage = 'Please enter a valid email';
  //       return;
  //     }

  //   // Create a template parameters object with the user's email
  //   const templateParams = {
  //     email: userEmail
  //   };

  //   // Send the email using the EmailJS API
  //   emailjs.send('service_0ccqvkr', 'template_hokizxk', templateParams, 'fqCCmAv5WkqrWDnAY')
  //       .then((response) => {
  //         this.successMessage = 'Email sent successfully';
  //       })
  //       .catch((error) => {
  //         this.errorMessage = 'Error sending email';
  //       });
  // },

    // fetchFacebookPosts() {
    //   const accessToken = 'EAANjwi4lePUBAKOuK89DhDczQVvuZBZCYzZAFifZCnQM8wMh10BsMEpU1xTBaVw3ZAZCsBWC5GB8mTF3JtWESuvPnWtlmsZC4oY9zZAEvOMANdyDs1jk6Wkp0c4XkMAZAG3Qy9arJ1OZB44ZCTvr5mfMwO4RuiZBisLjLjrDb42m1qmpDosIAwF6mnZA3';
    //   const pageId = '109821408529015';
    //   const apiUrl = `https://graph.facebook.com/${pageId}/posts?access_token=${accessToken}&fields=message,picture`;

    //   this.$axios
    //     .get(apiUrl)
    //     .then(response => {
    //       const posts = response.data.data;
    //       this.fbposts = posts.slice(0, 1); // Limit to 2 posts
    //     })
    //     .catch(error => {
    //       console.log('Error fetching Facebook posts:', error);
    //     });
    //   },
    // Fetch blog data
    getPost() {
      this.$axios
        .get('https://rtblg.emalify.com/wp-json/wp/v2/posts')
        .then(response => {
          // Store the fetched blog data in the blogContents array
          this.blogContents = response.data; 
        })
        .catch(error => {
          console.error(error);
        });

      this.$axios
      .get('https://rtblg.emalify.com/wp-json/wp/v2/campaigns')
        .then((response) => {
          // Store the fetched campaign data in the campaignContents array
          this.campaignContents = response.data; 
          // Update the displayed campaigns based on the fetched data
          this.updateDisplayedCampaigns(); 
        })
        .catch((error) => {
          console.log(error);
        });

      this.$axios
        .get('https://rtblg.emalify.com/wp-json/wp/v2/events')
        .then((response) => {
          // Store the fetched event data in the eventContents array
          this.eventContents = response.data; 
          // Update the displayed events based on the fetched data
          this.updateDisplayedEvents(); 
        })
        .catch((error) => {
          console.log(error);
        });

      this.$axios
        .get('https://rtblg.emalify.com/wp-json/wp/v2/awards')
        .then((response) => {
          // Store the fetched awards data in the awards array
          this.awards = response.data; 
          // Update the displayed awards based on the fetched data
          this.updateDisplayedAwards(); 
        })
        .catch((error) => {
          console.log(error);
        });
    },

    // Awards methods
    updateDisplayedAwards() {
      const start = this.currentIndex;
      const end = start + this.itemsPerSlide;
      // Update the displayed awards based on the current index
      this.displayedAwards = this.awards.slice(start, end); 
    },
    previousSlide() {
      if (this.currentIndex > 0) {
        // Decrement the current index by the number of items per slide
        this.currentIndex -= this.itemsPerSlide; 
        // Update the displayed awards based on the updated index
        this.updateDisplayedAwards(); 
      }
    },
    nextSlide() {
      if (this.currentIndex + this.itemsPerSlide < this.awards.length) {
        // Increment the current index by the number of items per slide
        this.currentIndex += this.itemsPerSlide; 
        // Update the displayed awards based on the updated index
        this.updateDisplayedAwards(); 
      }
    },

    // Events methods
    updateDisplayedEvents() {
      const start = this.eventCurrentIndex;
      const end = start + this.eventItemsPerSlide;
      // Update the displayed events based on the current index
      this.displayedEvents = this.eventContents.slice(start, end); 
    },
    eventspreviousSlide() {
      if (this.eventCurrentIndex > 0) {
        // Decrement the current index by the number of items per slide
        this.eventCurrentIndex -= this.eventItemsPerSlide; 
        // Update the displayed events based on the updated index
        this.updateDisplayedEvents(); 
      }
    },
    eventsnextSlide() {
      if (this.eventCurrentIndex + this.eventItemsPerSlide < this.eventContents.length) {
        // Increment the current index by the number of items per slide
        this.eventCurrentIndex += this.eventItemsPerSlide; 
        // Update the displayed events based on the updated index
        this.updateDisplayedEvents(); 
      }
    },

    // Campaigns methods
    updateDisplayedCampaigns() {
      const start = this.campaigncurrentIndex;
      const end = start + this.campaignitemsPerSlide;
      // Update the displayed campaigns based on the current index
      this.displayedCampaigns = this.campaignContents.slice(start, end); 
    },
    campaignPreviousSlide() {
      if (this.campaigncurrentIndex > 0) {
        // Decrement the current index by the number of items per slide
        this.campaigncurrentIndex -= this.campaignitemsPerSlide; 
        // Update the displayed campaigns based on the updated index
        this.updateDisplayedCampaigns(); 
      }
    },
    campaignNextSlide() {
      if (this.campaigncurrentIndex + this.campaignitemsPerSlide < this.campaignContents.length) {
        // Increment the current index by the number of items per slide
        this.campaigncurrentIndex += this.campaignitemsPerSlide; 
        // Update the displayed campaigns based on the updated index
        this.updateDisplayedCampaigns(); 
      }
    },

    // Fetch gallery images
    getGallery() {
      this.$axios
        .get('https://rtblg.emalify.com/wp-json/wp/v2/home_page_gallery')
        .then(response => {
          // Store the fetched gallery images in the galleryImages array
          this.galleryImages = response.data; 
        })
        .catch(error => {
          console.log(error);
        });
    },
    
    // Trims the content to a desired word limit
    trimContent(content) {
       // Define the desired word limit
      const wordLimit = 60;
      const words = content.split(' ');

      if (words.length > wordLimit) {
        const trimmedWords = words.slice(0, wordLimit);
        return `${trimmedWords.join(' ')}...`;
      }

      return content;
    },

    // Trims the campaign content to a desired word limit
    campaigntrimContent(content) {
      // Define the desired word limit
      const wordLimit = 50; 
      const words = content.split(' ');

      if (words.length > wordLimit) {
        const trimmedWords = words.slice(0, wordLimit);
        return `${trimmedWords.join(' ')}...`;
      }

      return content;
    },
  },
};

// const facebookPage = '109821408529015';
// const accessToken = 'EAANjwi4lePUBAJmGYBM13UBN0Y6MIsl0ciYUcPErLAOMAqZCU6A2PrVqv8Ela0lq3KGmu2YZBoZANP6OgZBX3o4Ax7zHXB48yXNKGREIaUisybL8xujVUJRW8e7XOBtd3pKbfe94UAzwyW8ZCvMz11z4WxzD9UZBc1M43sF2P5HVIZAuRgjH91YNGfKkflSzKTa1qjziEaLDOCKFdWk1jgf';
  
//   // Fetch Facebook posts
//   fetch(`https://graph.facebook.com/${facebookPage}/posts?access_token=${accessToken}`)
//   .then(response => response.json())
//     .then(data => {
//       const posts = data.data;
//       let postsHTML = '';
      
//       // Create HTML for each post
//       posts.forEach(post => {
//         postsHTML += `<p>${post.message}</p>`;
//       });
      
//       // Update the element with fetched posts
//       document.getElementById('facebook-posts').innerHTML = postsHTML;
//     })
//     .catch(error => {
//       console.log('Error fetching Facebook posts:', error);
//     });
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
  left: 50%;
  transform: translateX(-50%);
  text-align: center;
  z-index: 1;
}

.trending-wrapper{
  flex:3;

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
  width: 90%;
  padding-left: 100px;
}


.trending-content .card:not(:first-child) {
  margin-top: 20px;
}

.blogcontent1 {
  background-color: #1b75bc;
  height: 300px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.blogcontent2 {
  background-color: #e6fdffc4;
  height: 400px;
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
  height: 300px;
  width: 300px;
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
  margin-left: 10px;
  text-transform: uppercase;
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
  text-transform: capitalize;
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
  margin-left: 10px;
  padding: 0 10px;
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

.campaign-img img{
  height: 250px;
}

.campaign-title {
  padding-top: 10px;
  padding-left: 10px;
  font-size: 1.2rem;
  font-weight: 600;
  text-transform: capitalize;
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

.campaigns-arrow {
  position: absolute;
  top: 25%;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
}

.campaign-left {
  left: 10px;
}

.campaign-right {
  right: 10px;
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
  text-transform: capitalize;
}

.event-details {
  font-weight: 100;
  line-height: 1.1;
  padding: 10px 0 30px 10px;
  text-align: left;
}

.events-arrow {
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

.events-left {
  left: 10px;
}

.events-right {
  right: 10px;
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
  text-transform: capitalize;
}

.award-details {
  max-width: 1200px;
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
}

.floating-button {
    position: fixed;
    bottom: 20px;
    right: 20px;
  }

  .floating-button button {
    padding: 10px 20px;
    background: linear-gradient(to top, #1B75BC, #0E3B5E);
    color: white;
    border: none;
    border-radius: 20px;
    font-size: 12px;
    cursor: pointer;
  }

  @media only screen and (max-width: 800px) {
    .blog {
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 50vh;
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
  height: 50%;
  background: linear-gradient(to top,
      rgba(247, 251, 252, 0.9) 0%,
      rgba(247, 251, 252, 0.7) 40%,
      rgba(247, 251, 252, 0) 80%);
  z-index: 1;
}

.trending .container {
  display:block ;
  width: 90%;
  padding-left: 50px;
  padding-right: 10px ;
}

.trending .title {
  padding-left: 10px;
}

.awards-container p {
  color: #fff;
  padding-left: 20px;
  padding-right: 20px;
  padding-bottom: 150px;
}

.gallery-container h6 {
  color: #fff;
  padding: 0px 20px 20px;
}

.gallery-title {
  font-size: 10px;
  font-weight: bold;
  text-align: left;
}

.gallery-content p {
  font-size: 5px;
  text-align: left;
  padding-right: 50px;
}

.image-container img {
   margin-top: 0;
}

.campaigns h2 {
  font-size: 1.5rem;
  padding: 20px 70px;
}

.campaigns-wrapper {
  width: 70%;
  display: block;
  grid-template-columns: repeat(1, 1fr); 
}

.campaign-card {
  margin-bottom: 10px;
}

.campaigns-arrow {
background-color: transparent;
color: transparent;
}

.events h2 {
  font-size: 1.5rem;
  padding: 20px 70px;
}

.events-wrapper {
  width: 70%;
  display: block;
  grid-template-columns: repeat(1, 1fr); 
}

.event-card {
  margin-bottom: 10px;
}

.events-arrow {
background-color: transparent;
color: transparent;
}

.awards-wrapper {
  width: 70%;
  display: block;
  grid-template-columns: repeat(1, 1fr); 
}

.award-card {
  margin-bottom: 10px;
}

.awards-arrow {
background-color: transparent;
color: transparent;
}

}
</style>
