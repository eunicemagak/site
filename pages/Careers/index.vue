<template>
    <div>
        <!-- header section -->
        <div class="careers">
            <!-- Navigation component -->
            <Nav />

            <div class="career-header">
                <div class="career-wrapper">
                    <div>
                        <h1>Discover<br>new career<br>opportunities</h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="careers-desc">
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

        <!-- Job posters section -->
        <div class="careers-posters">
            <div class="posters-container">
                <!-- Display job posters using v-for loop -->
                <div v-for="(poster, index) in displayedjobPosters" :key="index">
                    <img :src="poster.acf.job_poster" alt="" />
                </div>
            </div>
            <div class="jobPosters-arrow jobPosters-left" @click="jobPostersPreviousSlide">
                <i class="fas fa-chevron-left"></i>
            </div>
            <div class="jobPosters-arrow jobPosters-right" @click="jobPostersNextSlide">
                <i class="fas fa-chevron-right"></i>
            </div>
        </div>

        <!-- job listings section -->
        <div class="careers-post">
            <div class="careers-latest">
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
</template>
  
<script>
export default {
    data() {
        return {
            // Array to store job listings
            jobs: [],
            // Array to store job posters
            jobPosters: [],
            // Array to store currently displayed job posters
            displayedjobPosters: [],
            // Current index of job posters carousel
            jobPosterscurrentIndex: 0,
            // Number of job posters to display per slide
            jobPostersitemsPerSlide: 4,
            // Array to store job tags
            tags: [],
        };
    },
    created() {
        // Fetch job posters when component is created
        this.fetchJobPosters();
        // Fetch job listings when component is created
        this.fetchJobListings();
    },
    methods: {
        fetchJobPosters() {
            this.$axios
                // API endpoint to fetch job posters
                .get('http://localhost/wordpress/wp-json/wp/v2/job_poster')
                .then(response => {
                    // Store fetched job posters in the data array
                    this.jobPosters = response.data;
                    // Update the displayed job posters
                    this.updateDisplayedjobPosters();
                })
                .catch(error => {
                    console.error('Error fetching job posters:', error);
                });
        },
        fetchJobListings() {
            this.$axios
                // API endpoint to fetch job listings
                .get('http://localhost/wordpress/wp-json/wp/v2/job_listing')
                // Store fetched job listings in the data array, including handling for missing job dates
                .then(response => {
                    this.jobs = response.data.map(job => ({
                        ...job,
                        date: job.date || '',
                    }));
                    // Fetch the tags after fetching job listings
                    this.fetchTags();
                })
                .catch(error => {
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

            // API endpoint to fetch tags
            this.$axios
                .get('http://localhost/wordpress/wp-json/wp/v2/tags', {
                    params: {
                        include: tagIds.join(','),
                    },
                })
                .then(response => {
                    // Store fetched tags in the data array
                    this.tags = response.data;
                })
                .catch(error => {
                    console.error('Error fetching tags:', error);
                });
        },
        getFormattedDate(job) {
            if (!job.date) {
                // Handle case when job date is not available yet
                return '';
            }

            // Convert the job date string to a Date object
            const jobDate = new Date(job.date);
            // Get the current date
            const today = new Date();
            const yesterday = new Date();
            // Get the date of yesterday
            yesterday.setDate(yesterday.getDate() - 1);
            // Calculate the time difference between the job date and today
            const diffTime = Math.abs(today - jobDate);
            // Calculate the difference in days
            const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

            if (diffDays === 0) {
                // Return 'Today' if the job date is the same as today
                return 'Today';
            } else if (diffDays === 1) {
                // Return 'Yesterday' if the job date is the same as yesterday
                return 'Yesterday';
            } else {
                // Return the number of days ago for any other date
                return `${diffDays} days ago`;
            }
        },

        getJobTags(job) {
            return job.tags || [];
        },
        getTagName(tagId) {
            // Find the tag by ID in the fetched tags array
            const tag = this.tags.find(tag => tag.id === tagId);
            return tag ? tag.name : '';
        },

        // Truncate the description to the specified word count
        truncateDescription(description, wordCount) {
            // If the description is empty or undefined, return an empty string`    
            if (!description) return '';
            // Split the description into an array of words
            const words = description.split(' ');
            if (words.length <= wordCount) {
                // If the number of words is less than or equal to the specified word count, return the original description
                return description;
            } else {
                // Extract the specified number of words from the array
                const truncatedWords = words.slice(0, wordCount);
                // Join the truncated words back into a string
                const truncatedDescription = truncatedWords.join(' ');
                // Add ellipsis at the end of the truncated description and return it
                return truncatedDescription + '...';
            }
        },

        // Move to the previous slide of job posters
        jobPostersPreviousSlide() {
            // Check if the current index allows moving to the previous slide
            if (this.jobPosterscurrentIndex > 0) {
                // Decrement the current index by the number of items per slide 
                this.jobPosterscurrentIndex -= this.jobPostersitemsPerSlide;
                // Update the displayed job posters based on the new index
                this.updateDisplayedjobPosters();
            }
        },

        // Move to the next slide of job posters
        jobPostersNextSlide() {
            // Check if moving to the next slide is possible without exceeding the number of available job posters
            if (this.jobPosterscurrentIndex + this.jobPostersitemsPerSlide < this.jobPosters.length) {
                // Increment the current index by the number of items per slide
                this.jobPosterscurrentIndex += this.jobPostersitemsPerSlide;
                // Update the displayed job posters based on the new index
                this.updateDisplayedjobPosters();
            }
        },

        // Update the displayed job posters based on the current index and items per slide
        updateDisplayedjobPosters() {
            // Determine the starting index of the displayed job posters
            const start = this.jobPosterscurrentIndex;
            // Determine the ending index of the displayed job posters
            const end = start + this.jobPostersitemsPerSlide;
            // Extract the relevant job posters from the original list based on the start and end indices
            this.displayedjobPosters = this.jobPosters.slice(start, end);
        },

    },
};
</script>


<style>
.careers {
    background: url('./assets/images/careersbg.png');
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    height: 70vh;
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

.careers-posters {
    background-color: #084576;
    padding: 80px;
    padding-left: 150px;
}

.posters-container {
    display: flex;
}

.posters-container img {
    width: 250px;
    height: auto;
    padding-right: 10px;
}

.careers-post {
    background-color: #FFFFFF;
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

.job-company h6{
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
    left: 60px;
}

.jobPosters-right {
    right: 100px;
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