<template>
  <section class="products__container">
    <div v-for="product in products" :key="product.id">
      <img
        v-if="product.photos"
        :src="product.photos[0].src"
        :alt="product.photos[0].title"
      />
      <h2 class="product__name">{{ product.name }}</h2>
      <p class="product__price">{{ product.price }}</p>
      <p class="product__description">{{ product.description }}</p>
    </div>
  </section>
</template>

<script>
export default {
  name: "ProductsList",

  data: function () {
    return {
      products: null,
    };
  },

  created() {
    this.getProducts();
  },

  methods: {
    getProducts() {
      const url = "http://localhost:3000/product";
      fetch(url)
        .then((response) => response.json())
        .then((response) => {
          this.products = response;
        });
    },
  },
};
</script>

<style scoped></style>
