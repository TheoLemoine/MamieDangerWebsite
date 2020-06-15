<template>
  <div id="app">
    <LandingPage />
    <Introduction />
    <Teaser />
    <City />
    <Puzzle />
    <Banner />
    <Conception />
    <Team />
    <Footer />
  </div>
</template>

<script>
import LandingPage from "./components/LandingPage";
import Introduction from "./components/Introduction";
import Teaser from "./components/Teaser";
import City from "./components/City";
import Puzzle from "./components/Puzzle";
import Banner from "./components/Banner";
import Conception from "./components/Conception";
import Team from "./components/Team";
import Footer from "./components/Footer";

export default {
  name: "App",
  components: {
    LandingPage,
    Introduction,
    Teaser,
    City,
    Puzzle,
    Banner,
    Conception,
    Team,
    Footer
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
