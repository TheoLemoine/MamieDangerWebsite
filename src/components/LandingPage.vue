<template>
  <div class="landing-page">
    <AppButton class="landing-page__button" />
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
    <div class="landing-page__cesure"></div>
  </div>
</template>

<script>
import AppButton from "./AppButton";
import WebPicture from "./WebPicture";

export default {
  components: {
    AppButton,
    WebPicture
  },
  name: "LandingPage"
};
</script>

<style scoped lang="scss">
@import "../scss/_mixins.scss";

.landing-page {
  height: 90vh;
  background: url("../assets/background/PLAN_1.jpg");
  background-size: cover;
  background-position: center;
  overflow: hidden;
  position: relative;

  @include media-phone {
    height: 90vh;
    background-position: left top;
  }

  &__logo {
    width: 35vw;
    position: absolute;
    left: 50%;
    top: 32%;
    transform: translate3d(-50%, -50%, 0);

    @include media-phone {
      width: 100vw;
      top: 20%;
    }
  }

  &__cesure {
    position: absolute;
    bottom: -5vh;
    height: 10vh;
    width: 100%;
    background-color: #ffeecf;
    transform: skewY(-2.9deg);
  }

  &__granny {
    position: absolute;
    width: 35%;
    right: 0;
    bottom: -10%;

    @include media-phone {
      width: 70%;
      bottom: -5%;
    }
  }

  &__button {
    position: absolute;
    z-index: 1;
    right: 48px;
    top: 48px;

    @include media-phone {
      right: unset;
      top: unset;
      bottom: 30vh;
      left: 50%;
      transform: translate3d(-50%, 0, 0);
    }
  }
}
</style>
