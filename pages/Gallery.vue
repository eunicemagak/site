<template>
  <div>
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
        <div v-for="(row, index) in galleryImages" :key="index" class="flex-images">
          <img v-for="(image, index) in row" :key="index" :src="image.src" alt="" />
        </div>
      </div>
      <div class="pagination">
        <a href="#" class="pagination-arrow prev"
          ><i class="fas fa-chevron-left"></i
        ></a>

        <ul class="pagination-list">
          <li v-for="(page, index) in totalPages" :key="index">
            <a href="#" class="pagination-link" :class="{ active: page === currentPage }">{{ page }}</a>
          </li>
        </ul>

        <a href="#" class="pagination-arrow next"
          ><i class="fas fa-chevron-right"></i
        ></a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      galleryHeaderTitle: 'End Of Year Party',
      galleryHeaderDescription: 'Time to kick back and usher out 2022 and we did it in style with loads of smiles, laughter and dance.',
      galleryTitle:'End Of Year 2022',
      galleryImages: [
        [
        
          { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image1' },
          { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image2' },
          { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image3' },
    ],
          [  
          { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image1' },
          { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image2' },
          { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image3' },
    ],
    // [
        
    //       { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image1' },
    //       { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image2' },
    //       { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image3' },
    // ],
    // [
        
    //       { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image1' },
    //       { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image2' },
    //       { src: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', alt: 'image3' },
    //   ],
    ],
      perPage: 3,
      currentPage: 1,
    }
  },
  computed: {
    totalPages() {
      return Math.ceil(this.galleryImages.length / this.perPage);
    },
    currentPageImages() {
      const startIndex = (this.currentPage - 1) * this.perPage;
      const endIndex = startIndex + this.perPage;
      return this.galleryImages.slice(startIndex, endIndex);
    },
  },
  // created() {
  //   this.fetchGalleryImages();
  // },
  // // methods: {
  // //   fetchGalleryImages() {
  // //     this.$axios
  // //       .get('https://localhost/wordpress/wp-json/wp/v2/gallery')
  // //         .then(response => {
  // //         this.galleryImages = response.data;
  // //       })
  // //       .catch(error => {
  // //         console.log(error);
  // //       });
  // //   },
  // },
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
}

.our-gallery .flex-images {
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
  align-items: center;
}

.our-gallery .flex-images img {
  width: 30%;
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
