<template>
  <div>
    <!-- header section -->
    <div class="jobs">
      <!-- Navigation component -->
      <Nav />

      <div class="jobs-header">
        <div class="jobs-wrapper">
          <div class="jobs-wrapper-wrap">
            <div>
              <h1>Discover<br>new career<br>opportunities</h1>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- job slug section -->
    <div class="jobs-post">
      <div class="jobs-latest">
        <div class="jobs-latest-wrap">
          <div class="jobs-lists">
            <!-- Display jobs slug using v-for loop -->
            <div v-for="job in jobs" :key="job.id" class="jobs-list-full">
              <div class="jobs-title">
                <h5>{{ job.title.rendered }}</h5>
              </div>
              <div class="jobs-company">
                <h6>{{ job.acf.company_name }}</h6>
              </div>
              <div class="jobs-tags">
                <!-- Display job tags with their names instead of IDs using v-for loop -->
                <p v-for="tagId in job.tags" :key="tagId">{{ getTagName(tagId) }}</p>
              </div>
              <div class="jobs-description">
                <h6 v-html="job.acf.job_description"></h6>
              </div>
              <div class="jobs-email">
                <p>{{ job.acf.careers_email }}</p>
              </div>
            </div>
          </div>

          <!-- subscribe to our newsletter section -->
          <div class="jobs-newsletter">
            <div class="jobs-newsletter-content">
              <div class="jobs-newsletter-title">
                <h5>Stay Updated</h5>
              </div>
              <div class="jobs-newsletter-desc">
                <p>Join our newsletter and get the latest job listings and career insights delivered straight to your
                  inbox
                </p>
              </div>
              <div class="jobs-newsletter-radio">
                <input type="radio" name="option" value="option1" id="option1">
                <label for="option1">Job Seeker</label>

                <input type="radio" name="option" value="option2" id="option2">
                <label for="option2">Employer</label>
              </div>
              <div class="jobs-newsletter-subscribe">
                <form class="jobs-subscribe-form">
                  <!-- <input type="email" id="email" name="email" placeholder="Enter your email" required> -->
                  <!-- <button type="submit">Notify Me</button> -->
                  <a href="http://eepurl.com/iuWnuA" target="_blank" rel="noopener noreferrer">
                    <button type="button">Notify Me</button>
                  </a>

                </form>
              </div>
              <div class="jobs-newsletter-privacypolicy">
                <p>We care about the protection of your data. Read our Privacy Policy</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="jobs-posters">
      <div class="jobs-posters-wrap">
        <div class="jobs-posters-container" ref="postersContainer">
          <div v-for="(poster, index) in displayedjobPosters" :key="index" class="poster-item">
            <img :src="poster.acf.job_poster" alt="" />
          </div>
        </div>
        <div class="jobPosters-arrow jobPosters-left" @click="jobPostersPreviousSlide"
          :class="{ disabled: isJobPostersPreviousDisabled }">
          <i class="fas fa-chevron-left"></i>
        </div>
        <div class="jobPosters-arrow jobPosters-right" @click="jobPostersNextSlide"
          :class="{ disabled: isJobPostersNextDisabled }">
          <i class="fas fa-chevron-right"></i>
        </div>
      </div>


    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // Array to store job data
      jobs: [],
      // Array to store tag data
      tags: [],
      // Array to store job poster data
      jobPosters: [],
      // Array to store the currently displayed job posters 
      displayedjobPosters: [],
      // Current index of the job posters
      jobPosterscurrentIndex: 0,
      // Number of job posters to display per slide
      jobPostersitemsPerSlide: 4,
      // Parameter from the route-slug
      slug: this.$route.params.slug,
    };
  },

  // lifecycle hook
  created() {
    this.JobListing();
    // this.fetchJobDetails();
  },

  computed: {
    tagMap() {
      // Use the reduce method to transform the tags array into a tag mapping object
      return this.tags.reduce((map, tag) => {
        // Assign the tag name to the tag ID in the mapping object
        map[tag.id] = tag.name;
        return map;
      }, {});
    },
    isJobPostersPreviousDisabled() {
      return this.jobPosterscurrentIndex === 0;
    },
    isJobPostersNextDisabled() {
      return this.jobPosterscurrentIndex + this.jobPostersitemsPerSlide >= this.jobPosters.length;
    },
  },


  methods: {
    // Method to fetch job listings and job posters
    JobListing() {
      this.$axios
        .get('job_poster')
        .then(response => {
          // Store the fetched job poster data
          this.jobPosters = response.data;
          // Call the method to initialize displayedjobPosters
          this.updateDisplayedjobPosters();
        })
        .catch(error => {
          console.error(error);
        });

      this.$axios
        .get(`job_listing?slug=${this.slug}`)
        .then(response => {
          // Store the fetched job data
          this.jobs = response.data;
          // Fetch the tags after fetching job listings
          this.fetchTags();
        })
        .catch(error => {
          console.error('Error fetching job data:', error);
        });
    },

    // Method to fetch tags for the job listings
    fetchTags() {
      // Extract tag IDs from the jobs array
      const tagIds = this.jobs.reduce((ids, job) => {
        if (job.tags && job.tags.length > 0) {
          ids.push(...job.tags);
        }
        return ids;
      }, []);

      // Make an HTTP GET request to fetch tag data using the tag IDs
      this.$axios
        .get('tags', {
          params: {
            include: tagIds.join(','),
          },
        })
        .then(response => {
          // Store the fetched tag data in the component's tags property
          this.tags = response.data;
        })
        .catch(error => {
          console.error('Error fetching tags:', error);
        });
    },

    getJobTags(job) {
      // Return the job tags if available, otherwise return an empty array
      return job.tags || [];
    },

    getTagName(tagId) {
      // Find the tag object with the matching tag ID from the tags array
      const tag = this.tags.find(tag => tag.id === tagId);
      // Return the tag name if found, otherwise return an empty string
      return tag ? tag.name : '';
    },

    // Method to update the displayed job posters based on the current index and items per slide
    updateDisplayedjobPosters() {
      // Calculate the start and end indices for the displayed job posters
      const start = this.jobPosterscurrentIndex;
      const end = start + this.jobPostersitemsPerSlide;
      // Slice the jobPosters array to extract the subset of job posters to be displayed
      this.displayedjobPosters = this.jobPosters.slice(start, end);
    },

    // Method to move to the previous slide of job posters
    jobPostersPreviousSlide() {
      if (this.jobPosterscurrentIndex > 0) {
        // Decrement the current index by the number of items per slide
        this.jobPosterscurrentIndex -= this.jobPostersitemsPerSlide;
        // Update the displayed job posters using the updated current index
        this.updateDisplayedjobPosters();
      }
    },

    // Method to move to the next slide of job posters
    jobPostersNextSlide() {
      if (this.jobPosterscurrentIndex + this.jobPostersitemsPerSlide < this.jobPosters.length) {
        // Increment the current index by the number of items per slide
        this.jobPosterscurrentIndex += this.jobPostersitemsPerSlide;
        // Update the displayed job posters using the updated current index
        this.updateDisplayedjobPosters();
      }
    }

  },
};
</script>

<style>
.jobs-wrapper-wrap {
  max-width: 1200px;
  margin: auto;
}

.jobs {
  background: url('./assets/images/jobbg.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 60vh;
  position: relative;
  z-index: 0;
}

.jobs-header h1 {
  color: #1B75BC;
  font-size: 50px;
  font-weight: bold;
  text-align: left;
  padding-top: 150px;
  padding-left: 150px;
  text-shadow: 0px 3px 6px #00000029;
  letter-spacing: 0px;
}

.jobs-content {
  padding: 100px 0;
}

.jobs-posters-wrap {
  max-width: 1200px;
  margin: auto;
}

.jobs-posters {
  background-color: #E6FDFF;
  padding: 80px;
}

/* .poster-item {
  width: 250px;
  height: auto;
  padding-right: 10px;
} */

.jobs-posters-container {
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

.poster-item {
  position: relative;
  width: 100%;
  /* Set the container width as needed */
  padding-bottom: 75.25%;
  /* Custom aspect ratio */

}

.poster-item img {
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: cover;
  top: 0;
  left: 0;
}

.jobs-post {
  background-color: #FFFFFF;
}

.jobs-latest-wrap {
  max-width: 1200px;
  margin: auto;
}

.jobs-latest {
  background-color: #FFFFFF;
  padding: 50px 300px 50px 150px;
}

.jobs-title {
  padding: 20px 0 10px 0;
  font-weight: bold;
}

.jobs-list-full {
  border: 1px solid #C3BEBE;
  padding: 0 50px 10px 20px;
}

.jobs-title h5 {
  color: #1B75BC;
  font-weight: bold;
  text-transform: capitalize;
}

.jobs-title p {
  margin-left: auto;
  padding-right: 60px;
}

.jobs-company {
  color: #1B75BC;
}

.jobs-company h6 {
  text-transform: capitalize;
}

.jobs-tags {
  display: flex;
  gap: 10px;
  padding: 10px 0;
}

.jobs-tags p {
  background-color: #E8E8E8;
  padding: 7px 15px;
  font-size: 12px;
  border-radius: 5px;
}

.jobs-function {
  padding-bottom: 10px;
}

.jobs-function h6 {
  font-size: 12px;
  font-weight: bold;
}

.jobs-details p {
  padding-right: 100px;
  font-size: 12px;
}

.job-qualification {
  padding: 10px 0;
}

.job-qualification p {
  font-weight: bold;
  font-size: 12px;
}

.jobs-email {
  color: #1B75BC;
  font-weight: bold;
  padding: 10px 0 10px 0;
}

.jobs-requirement p {
  padding-top: 10px;
}

.jobs-newsletter {
  padding-top: 20px;
}

.jobs-newsletter-content {
  border: 1px solid #C3BEBE;
  padding: 10px 20px;
}

.jobs-newsletter-title {
  font-size: 20px;
  font-weight: bold;
  padding-bottom: 10px;
  padding-top: 10px;
}

.jobs-newsletter-desc p {
  padding-bottom: 10px;
}

.jobs-newsletter-subscribe {
  padding-top: 10px;
  padding-bottom: 10px;
}

.jobs-subscribe-form {
  display: inline;
}

.jobs-subscribe-form input {
  border: 1px solid #C3BEBE;
  width: 60%;
  border-radius: 5px;
}

.jobs-subscribe-form button {
  background-color: rgb(172, 41, 41);
  color: white;
  width: 100px;
  padding: 12px;
  border-radius: 5px;
  font-weight: bold;
  font-size: 12px;
}

.jobs-newsletter-privacypolicy {
  padding-bottom: 10px;
}

.jobPosters-arrow {
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

.jobs-posters .jobPosters-arrow.disabled {
  opacity: 0.5;
  cursor: not-allowed;
  color: #ccc;
}

.jobs-posters .jobPosters-arrow {
  right: -20px
}

/* .jobPosters-left {
  left: 60px;
}

.jobPosters-right {
  right: 70px;
} */

@media only screen and (max-width: 800px) {
  .jobs {
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    height: 50vh;
    position: relative;
    z-index: 0;
  }

  .jobs-header h1 {
    color: #1B75BC;
    font-size: 30px;
    font-weight: bold;
    text-align: left;
    padding-top: 150px;
    padding-left: 100px;
    text-shadow: 0px 3px 6px #00000029;
    letter-spacing: 0px;
  }


  .jobs-latest {
    background-color: #FFFFFF;
    padding: 30px 10px 30px 10px;
  }

  .jobs-posters-container {
    display: grid;
  }

  .poster-item {
    width: 300px;
    height: auto;
    padding-bottom: 10px;
  }

  .jobs-posters {
    padding: 50px;
  }

  .jobPosters-arrow {
    color: transparent;
  }


}</style>