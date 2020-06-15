<template>
  <div class="landing-page">
    <DownloadButton class="landing-page__button" />
    <WebPicture
      folder="characters"
      filename="granny_coucou_2048_0092"
      alt="Mamie"
      class="landing-page__granny"
    />
    <img
      src="../assets/logo_accueil.png"
      alt="Mamie Danger"
      class="landing-page__logo"
    />
  </div>
</template>

<script>
import DownloadButton from "./DownloadButton";
import WebPicture from "./WebPicture";

export default {
  components: {
    DownloadButton,
    WebPicture
  },
  name: "LandingPage"
};
</script>

<style scoped lang="scss">
.landing-page {
  height: 100vh;
  background: url("../assets/background/PLAN_1.jpg");
  background-size: cover;
  background-position: center;
  overflow: hidden;
  position: relative;

  &__logo {
    width: 35vw;
    position: absolute;
    left: 50%;
    top: 32%;
    transform: translate3d(-50%, -50%, 0);
  }

  &__granny {
    position: absolute;
    width: 45%;
    right: -2%;
    bottom: -10%;
  }

  &__button {
    position: absolute;
    right: 48px;
    top: 48px;
  }
}
</style>
