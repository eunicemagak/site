<template>
  <div>
    <!-- header section -->
    <div class="careers">
      <!-- Navigation component -->
      <Nav />
      <div class="careers-wrap">

        <div class="career-header">
          <div class="career-wrapper">
            <div>
              <h1>Discover<br>new career<br>opportunities</h1>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="careers-desc">
      <div class="careers-desc-wrap">

        <div class="careers-content">
          <div class="careers-desc">
            <h1>Why Join Us</h1>
            <h5>With over 10 years of experience, we know how to simplify technology to deliver innovative solutions
              that create great value for our customers</h5>
            <p>We are driven by passion and hard work, we help our clients to build stronger more agile and
              innovative businesses that deliver great customer experiences
              online. Our strength lies in listening to client challenges and ambitions and creating solutions
              that serve their needs. We have invested in the capabilities and team to ensure that roamtech is
              well positioned to deliver.</p>
          </div>
          <div class="careers-desc-img">
            <img src="../../assets/images/careerscontent.png" alt="">
          </div>
        </div>
      </div>
    </div>

    <!-- Job posters section -->
    <div class="careers-posters">
      <div class="careers-posters-wrap">
        <div class="posters-container">
          <div class="job-posters" v-for="(poster, index) in displayedjobPosters" :key="index">
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


    <!-- job listings section -->
    <div class="careers-post">
      <div class="careers-latest">
        <div class="careers-latest-wrap">
          <div class="careers-title">
            <h1>Latest Jobs</h1>
          </div>
          <div class="careers-lists">
            <div class="scrollable-container">
              <nuxt-link v-for="job in jobs" :key="job.id" :to="'/Careers/' + job.slug">
                <div class="career-list">
                  <div class="job-title">
                    <h5>{{ job.title.rendered }}</h5>
                    <p>{{ getFormattedDate(job) }}</p>
                  </div>
                  <div class="job-company">
                    <h6>{{ job.acf.company_name }}</h6>
                  </div>
                  <div class="job-tags">
                    <!-- Display job tags with their names instead of IDs using v-for loop -->
                    <p v-for="tagId in job.tags" :key="tagId">{{ getTagName(tagId) }}</p>
                  </div>
                  <div class="job-details">
                    <div class="job-description">
                      <!-- Truncate job description -->
                      <h6 v-html="truncateDescription(job.acf.job_description, 40)"></h6>
                    </div>
                    <!-- Display job company logo -->
                    <div class="job-logo">
                      <img :src="job.acf.company_logo" alt="">
                    </div>
                  </div>
                </div>
              </nuxt-link>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</template>
  
<script>
export default {
  data() {
    return {
      jobs: [],
      jobPosters: [],
      displayedjobPosters: [],
      jobPosterscurrentIndex: 0,
      jobPostersitemsPerSlide: 4,
      tags: [],
    };
  },
  created() {
    this.fetchJobPosters();
    this.fetchJobListings();
  },
  computed: {
    isJobPostersPreviousDisabled() {
      return this.jobPosterscurrentIndex === 0;
    },
    isJobPostersNextDisabled() {
      return this.jobPosterscurrentIndex + this.jobPostersitemsPerSlide >= this.jobPosters.length;
    },
  },
  methods: {
    fetchJobPosters() {
      this.$axios
        .get('job_poster')
        .then((response) => {
          this.jobPosters = response.data;
          this.updateDisplayedjobPosters();
        })
        .catch((error) => {
          console.error('Error fetching job posters:', error);
        });
    },
    fetchJobListings() {
      this.$axios
        .get('job_listing')
        .then((response) => {
          this.jobs = response.data.map((job) => ({
            ...job,
            date: job.date || '',
          }));
          this.fetchTags();
        })
        .catch((error) => {
          console.error('Error fetching job data:', error);
        });
    },
    fetchTags() {
      const tagIds = this.jobs.reduce((ids, job) => {
        if (job.tags && job.tags.length > 0) {
          ids.push(...job.tags);
        }
        return ids;
      }, []);

      this.$axios
        .get('tags', {
          params: {
            include: tagIds.join(','),
          },
        })
        .then((response) => {
          this.tags = response.data;
        })
        .catch((error) => {
          console.error('Error fetching tags:', error);
        });
    },
    getFormattedDate(job) {
      if (!job.date) {
        return '';
      }

      const jobDate = new Date(job.date);
      const today = new Date();
      const yesterday = new Date();
      yesterday.setDate(yesterday.getDate() - 1);
      const diffTime = Math.abs(today - jobDate);
      const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

      if (diffDays === 0) {
        return 'Today';
      } else if (diffDays === 1) {
        return 'Yesterday';
      } else {
        return `${diffDays} days ago`;
      }
    },
    getJobTags(job) {
      return job.tags || [];
    },
    getTagName(tagId) {
      const tag = this.tags.find((tag) => tag.id === tagId);
      return tag ? tag.name : '';
    },
    truncateDescription(description, wordCount) {
      if (!description) return '';
      const words = description.split(' ');
      if (words.length <= wordCount) {
        return description;
      } else {
        const truncatedWords = words.slice(0, wordCount);
        const truncatedDescription = truncatedWords.join(' ');
        return truncatedDescription + '...';
      }
    },
    jobPostersPreviousSlide() {
      if (this.jobPosterscurrentIndex >= this.jobPostersitemsPerSlide) {
        this.jobPosterscurrentIndex -= this.jobPostersitemsPerSlide;
        this.updateDisplayedjobPosters();
      }
    },
    jobPostersNextSlide() {
      if (this.jobPosterscurrentIndex + this.jobPostersitemsPerSlide < this.jobPosters.length) {
        this.jobPosterscurrentIndex += this.jobPostersitemsPerSlide;
        this.updateDisplayedjobPosters();
      }
    },
    updateDisplayedjobPosters() {
      const start = this.jobPosterscurrentIndex;
      const end = start + this.jobPostersitemsPerSlide;
      this.displayedjobPosters = this.jobPosters.slice(start, end);
    },
  },
};
</script>



<style>
.careers-wrap {
  max-width: 1200px;
  margin: auto;
}

.careers {
  background: url('./assets/images/careersbg.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 60vh;
  position: relative;
  z-index: 0;
}

.career-header h1 {
  color: #fff;
  font-size: 50px;
  font-weight: bold;
  text-align: left;
  padding-top: 150px;
  padding-left: 150px;
  text-shadow: 0px 3px 6px #00000029;
  letter-spacing: 0px;
}

.careers-desc-wrap {
  max-width: 1200px;
  margin: auto;
}

.careers-desc {
  background-color: #FFFFFF;
}

.careers-content {
  padding: 100px 0;
  display: flex;
}

.careers-desc {
  padding: 0 140px 0 70px;
}

.careers-desc h1 {
  color: #1B75BC;
  font-weight: bold;
  font-size: 40px;
  padding-bottom: 10px;
}

.careers-desc h5 {
  color: #1B75BC;
  font-size: 20px;
  padding-bottom: 10px;
}

.careers-desc-img img {
  width: 1200px;
  height: auto;
}

.careers-posters-wrap {
  max-width: 1200px;
  margin: auto;
}

.careers-posters {
  background-color: #084576;
  padding: 80px;
  padding-left: 150px;
}

.posters-container {
  margin-top: 50px;
  width: 80%;
  max-width: 1200px;
  height: 100%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
  justify-content: center;
}

.job-posters {
  position: relative;
  width: 100%;
  /* Set the container width as needed */
  padding-bottom: 75.25%;
  /* Custom aspect ratio */

}

.job-posters img {
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: cover;
  top: 0;
  left: 0;
}

.careers-post {
  background-color: #FFFFFF;
}

.careers-latest-wrap {
  max-width: 1200px;
  margin: auto;
}

.careers-latest {
  background-color: #FFFFFF;
  padding: 50px 300px 50px 150px;
}

.careers-title {
  padding-bottom: 20px;
  font-weight: bold;
}

.career-list {
  border: 1px solid #C3BEBE;
  margin-bottom: 20px;
  padding: 0 50px 10px 20px;
}

.job-title {
  display: flex;
  padding: 10px 0 10px 0;
}

.job-title h5 {
  color: #1B75BC;
  font-weight: bold;
  text-transform: capitalize;
}

.job-title p {
  margin-left: auto;
}

.job-company {
  color: #1B75BC;
}

.job-company h6 {
  text-transform: capitalize;
}

.job-tags {
  display: flex;
  gap: 10px;
  padding: 10px 0;
}

.job-tags p {
  background-color: #E8E8E8;
  padding: 7px 15px;
  font-size: 12px;
  border-radius: 5px;
}

.job-function {
  padding-left: 20px;
  padding-bottom: 10px;
}

.job-function h6 {
  font-size: 12px;
  font-weight: bold;
}

.job-details {
  display: flex;
  align-items: flex-start;
}

.job-description {
  flex: 1;
  padding-right: 10px;
}

.job-logo {
  width: 7%;
  margin-left: auto;
  align-self: flex-end;
  margin-bottom: 20px;
}

.scrollable-container {
  max-height: 600px;
  overflow-y: auto;
  scrollbar-width: none;
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

.jobPosters-left {
  left: -50px;
}

.jobPosters-right {
  right: 180px;
}

.careers-posters .jobPosters-arrow.disabled {
  opacity: 0.5;
  /* Reduce opacity for disabled state */
  pointer-events: none;
  /* Disable click events */
}

@media only screen and (max-width: 800px) {
  .careers {
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    height: 50vh;
    position: relative;
    z-index: 0;
  }

  .career-header h1 {
    color: #fff;
    font-size: 30px;
    font-weight: bold;
    text-align: left;
    padding-top: 150px;
    padding-left: 100px;
    text-shadow: 0px 3px 6px #00000029;
    letter-spacing: 0px;
  }

  .careers-desc {
    padding: 0 20px 0 10px;
  }

  .careers-latest {
    background-color: #FFFFFF;
    padding: 30px 10px 30px 10px;
  }

  .job-tags {
    display: flex;
    gap: 5px;
    padding: 10px 0;
  }

  .job-tags p {
    background-color: #E8E8E8;
    padding: 3px 10px;
    font-size: 12px;
    border-radius: 5px;
  }

  .job-logo {
    width: 15%;
    margin-left: auto;
    align-self: flex-end;
    margin-bottom: 20px;
  }

  .posters-container {
    display: grid;
  }

  .posters-container img {
    width: 350px;
    height: auto;
    padding-bottom: 10px;
  }

  .careers-posters {
    padding: 50px;
  }

  .careers-content {
    padding: 10px;
    display: grid;
  }

  .careers-desc h1 {
    color: #1B75BC;
    font-weight: bold;
    font-size: 30px;
    padding-bottom: 10px;
  }

  .careers-desc h5 {
    color: #1B75BC;
    font-size: 15px;
    padding-bottom: 10px;
  }

  .jobPosters-arrow {
    color: transparent;
  }

}
</style>