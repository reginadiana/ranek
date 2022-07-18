<template>
  <section>
    <h1>Compre ou venda</h1>
    <ProductsSearch />
    <ProductsList />
  </section>
</template>

<script>
import ProductsSearch from "@/components/ProductsSearch";
import ProductsList from "@/components/ProductsList";

export default {
  name: "Home",

  components: {
    ProductsSearch,
    ProductsList,
  },
};
</script>

<style scoped>
h1 {
  font-size: 2rem;
  color: #87f;
  margin-top: 40px;
  text-align: center;
}
</style>
