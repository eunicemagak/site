<template>
  <div class="sub-navbar">
    <!-- blog sub navbar that scrolls to different categories -->
    <div class="nav-links1">
      <nuxt-link to="#trending" class="nav-link1"> Latest </nuxt-link>
      <nuxt-link to="#campaigns" class="nav-link1"> Campaigns </nuxt-link>
      <nuxt-link to="#events" class="nav-link1"> Upcoming Events </nuxt-link>
      <nuxt-link to="#awards" class="nav-link1">
        Awards & Recognition
      </nuxt-link>
      <nuxt-link to="#gallery" class="nav-link1"> Gallery </nuxt-link>
      <div class="nav-search">
        <input type="text" placeholder="Search" v-model="searchText" @keyup.enter="search" />
    <i class="fa fa-search" @click="search"></i>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchText: ''
    };
  },
  methods: {
    search() {
      const searchQuery = this.searchText.trim(); // Remove any leading or trailing whitespace
      if (searchQuery.length === 0) {
        // If the search query is empty, do nothing
        return;
      }

      const found = window.find(searchQuery); // Search for the query in the page
      if (found) {
        // If the query is found, scroll to the first occurrence
        window.scrollTo(0, window.pageYOffset + window.getSelection().getRangeAt(0).getBoundingClientRect().top - 50);
      } else {
        // If the query is not found, show an alert message
        alert(`No results found for "${searchQuery}"`);
      }
    }
  }
};
</script>

<style>
.sub-navbar {
  background-color: #000;
  width: 100%;
  height: 70px;
  padding-left: 100px;
}

.nav-search {
  position: relative;
  padding-left: 30px;
}

.nav-search input[type='text'] {
  width: 200px;
  height: 30px;
  border-radius: 15px;
  padding-left: 30px;
  border: none;
  background-color: #fff;
  color: #000;
}

.nav-search i {
  position: absolute;
  right: 10px;
  top: 8px;
  color: #1b75bc;
  font-size: 14px;
}

@media only screen and (max-width: 800px) {
.sub-navbar {
  height: 10px;
}
}
</style>
