<template>
  <header>
    <nav class="nav__container">
      <router-link to="/" class="logo--link">
        <img class="logo--img" src="@/assets/ranek.svg" alt="Logo" />
      </router-link>
      <router-link class="btn" to="/login">Vender / Login</router-link>
    </nav>
  </header>
</template>

<script>
export default {
  name: "TheHeader",
};
</script>

<style scoped>
.nav__container {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 15px 20px;
  box-shadow: 0 2px 2px 4px rba(30, 60, 90, 0.1);
}

.logo--link {
  padding: 10px 0;
}

.logo--img {
  width: 90px;
}
</style>
