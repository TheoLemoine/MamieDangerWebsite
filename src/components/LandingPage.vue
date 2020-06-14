<template>
  <div class="landing-page">
    <DownloadButton class="landing-page__button" />
    <picture class="landing-page__granny">
      <source
        type="image/webp"
        srcset="../assets/characters/granny_coucou_2048_0092.webp"
      />
      <source
        type="image/png"
        srcset="../assets/characters/granny_coucou_2048_0092.png"
      />
      <img src="../assets/characters/granny_coucou_2048_0092.png" alt="Mamie" />
    </picture>
    <img
      src="../assets/logo_accueil.png"
      alt="Mamie Danger"
      class="landing-page__logo"
    />
  </div>
</template>

<script>
import DownloadButton from "./DownloadButton";

export default {
  components: {
    DownloadButton
  },
  name: "LandingPage"
};
</script>

<style scoped lang="scss">
.landing-page {
  height: 100vh;
  background: url("../assets/background/PLAN_1.jpg");
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

    & > * {
      width: 100%;
    }
  }

  &__button {
    position: absolute;
    right: 48px;
    top: 48px;
  }
}
</style>
