<template>
  <div id="app">
    <LandingPage />
  </div>
</template>

<script>
import LandingPage from "./components/LandingPage";

export default {
  name: "App",
  components: {
    LandingPage
  }
};
</script>

<style lang="scss">
#app {
  font-family: "Poppins", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
