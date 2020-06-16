<template>
  <div class="banner">
    <div class="banner__content">
      <div class="banner__content__text">
        Peu à peu, une <strong>complicité</strong> va se créer entre nos deux héros.
      </div>
    </div>
    <div class="banner__characters">
      <Perspective
        :imageFilenames="characters"
        imageFolder="characters"
        alt="Les personnages"
        class="banner__characters__images"
        :xOffset="16"
        :yOffset="-20"
        :reversed="true"
      />
    </div>
  </div>
</template>

<script>
import Perspective from "./Perspective";

export default {
  components: {
    Perspective
  },
  data() {
    return {
      characters: ["granny_1_0081", "perso_1_0278"]
    };
  }
};
</script>

<style lang="scss">
@import "../scss/_mixins.scss";

.banner {
  position: relative;
  overflow: hidden;
  top: -5vh;
  padding-bottom: 70px;
  @include media-phone {
    padding-bottom: 20px;
  }
  &__content {
    background-color: #5959C9;
    &__text {
      max-width: 600px;
      margin: auto;
      padding: 22vh 0 25vh 0;
      font-size: 3rem;
      color: white;
      strong {
        color: #D36582;
      }
      @include media-phone {
        font-size: 1.5rem;
        width: 80%;
        padding: 10vh 0 11vh 0;
      }
    }
  }
  &__characters {
    height: 15vh;
    position: relative;
    @include media-phone {
      height: 10vh;
    }
    &__images {
      position: absolute;
      bottom: 0;
      right: 5vw;
      width: 12vw;
      & > *:nth-of-type(1) {
        width: 120%;
      }
      @include media-phone {
        width: 25vw;
      }
    }
  }
}
</style>
