<template>
  <div class="our-gallery">
    <Nav />
    <div class="gallery">
      <div class="gallery-wrapper">
        <h1>{{ galleryHeaderTitle }}</h1>
        <p>{{ galleryHeaderDescription }}</p>
      </div>
    </div>
    <Blognav />
    <div class="gallery-pics">
      <h3>{{ galleryTitle }}</h3>
      <div class="flex-images">
        <img v-for="(image, index) in displayedImages" :src="image" :key="index" />
      </div>
      <div class="pagination">
        <a href="#" class="pagination-arrow prev" @click="previousPage">
          <i class="fas fa-chevron-left"></i>
        </a>

        <ul class="pagination-list">
          <li v-for="(page, index) in totalPages" :key="index">
            <a
              href="#"
              class="pagination-link"
              :class="{ active: page === currentPage }"
              @click="changePage(page)"
            >{{ page }}</a>
          </li>
        </ul>

        <a href="#" class="pagination-arrow next" @click="nextPage">
          <i class="fas fa-chevron-right"></i>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      galleryHeaderTitle: 'End Of Year Party',
      galleryHeaderDescription:
        'Time to kick back and usher out 2022 and we did it in style with loads of smiles, laughter and dance.',
      galleryTitle: 'End Of Year 2022',
      galleryImages: [],
      itemsPerPage: 12,
      currentPage: 1,
    };
  },
  computed: {
    totalPages() {
      return Math.ceil(this.galleryImages.length / this.itemsPerPage);
    },
    displayedImages() {
      const startIndex = (this.currentPage - 1) * this.itemsPerPage;
      const endIndex = startIndex + this.itemsPerPage;
      return this.galleryImages.slice(startIndex, endIndex);
    },
  },
  created() {
    this.fetchGalleryImages();
  },
  methods: {
    fetchGalleryImages() {
      this.$axios
        .get('https://localhost/wordpress/wp-json/wp/v2/gallery')
        .then((response) => {
          this.galleryImages = response.data.map((item) => item.acf.image);
        })
        .catch((error) => {
          console.log(error);
        });
    },
    changePage(page) {
      this.currentPage = page;
    },
    previousPage() {
      if (this.currentPage > 1) {
        this.currentPage--;
      }
    },
    nextPage() {
      if (this.currentPage < this.totalPages) {
        this.currentPage++;
      }
    },
  },
};
</script>



<style>
.our-gallery .gallery {
  background: url('./assets/images/gallerybg.png');
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;
  height: 70vh;
  position: relative;
  z-index: 0;
}

.our-gallery .gallery::before {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  margin: 0;
  padding: 0;
  width: 100%;
  height: 70%;
  background: linear-gradient(to top, #1b9dbc 0%, rgba(18, 18, 20, 0) 80%);
  z-index: 1;
}

.our-gallery .gallery h1 {
  color: #fff;
  font-size: 30px;
  font-weight: bold;
  text-align: center;
}

.our-gallery .gallery p {
  color: #fff;
  text-align: center;
}

.our-gallery .gallery-wrapper {
  position: absolute;
  bottom: 50px;
  left: 50%;
  transform: translateX(-50%);
  text-align: center;
  z-index: 1;
}

.our-gallery .gallery-pics h3 {
  font-size: 24px;
  margin: 20px 0 20px 55px;
  font-weight: bold;
  margin-left: 110px;
}

.our-gallery .flex-images {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  justify-content: flex-start;
  margin: 10px 100px;
}

.our-gallery .flex-images img {
  width: calc(33.33% - 10px);
  margin: 5px;
  padding: 5px;
  box-sizing: border-box;
}

.our-gallery .pagination {
  display: flex;
  justify-content: center;
  background-color: #fff;
  padding: 10px;
  margin-bottom: 100px;
}

.our-gallery .pagination-arrow {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #1b75bc;
  border-radius: 4px;
  width: 30px;
  height: 30px;
  margin: 0 5px;
  font-size: 12px;
  color: #fff;
}

.our-gallery .pagination-list {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
}

.our-gallery .pagination-link {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #1b75bc;
  border-radius: 4px;
  width: 30px;
  height: 30px;
  margin: 0 5px;
  font-size: 12px;
  color: #fff;
  text-decoration: none;
}


</style>