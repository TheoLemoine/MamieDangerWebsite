<template>
  <div class="introduction">
    <div class="description">
      <div class="description__background"></div>
      <div class="description__text">
        Traverser la rue peut être un vrai
        <strong>parcours du combattant</strong> pour une personne agée...
      </div>
      <Perspective
        imageFolder="houses"
        :imageFilenames="houses"
        alt="Maisons"
        class="description__houses"
        :xOffset="0"
        :yOffset="16"
      />
    </div>
    <div class="street">
      <WebPicture
        class="street__granny"
        alt="Mamie attends au feu rouge"
        folder="characters"
        filename="granny_1_0297"
      />
      <WebPicture
        class="street__cross"
        alt="Passage piéton"
        folder="street"
        filename="traffic-light_passage_side_green"
      />
      <WebPicture
        class="street__car"
        alt="Voiture en marche"
        folder="street"
        filename="car_2_side_0"
      />
    </div>
  </div>
</template>

<script>
import Perspective from "./Perspective";
import WebPicture from "./WebPicture";

export default {
  components: {
    Perspective,
    WebPicture
  },
  data() {
    return {
      houses: [
        "house_w_floor_side",
        "house_w_floor_3_side",
        "house_w_floor_2_side"
      ]
    };
  }
};
</script>

<style lang="scss">
@import "../scss/_mixins.scss";

.introduction {
  height: 120vh;
  display: flex;
  flex-direction: column;
  justify-content: center;

  @include media-phone {
    height: 80vh;
  }

  .description {
    height: 62%;
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: center;

    &__text {
      position: relative;
      width: 40%;
      max-width: 400px;
      left: 15vw;
      z-index: 1;
      font-size: 2rem;
      font-weight: bold;
      color: #5959C9;

      strong {
        color: #D36582;
      }

      @include media-phone {
        font-size: 1.3rem;
        width: 75%;
      }
    }

    &__background {
      position: absolute;
      width: 30%;
      max-width: 430px;
      height: 100%;
      background-color: #FFEECF;
      border-radius: 0 42px 42px 0;

      @include media-phone {
        width: 40%;
        right: 0;
        border-radius: 42px 0 0 42px;
      }
    }

    &__houses {
      position: absolute;
      width: 20%;
      bottom: 70%;
      left: 5%;

      @include media-phone {
        width: 50%;
        left: -25%;
        bottom: unset;
        top: -30%;
      }
    }
  }

  .street {
    position: absolute;
    height: 100%;
    width: 100%;
    overflow: hidden;
    @include media-phone {
      display: none;
    }

    &__cross {
      width: 60%;
      position: absolute;
      display: inline-block;
      right: 0;
      bottom: 25%;
    }
    &__granny {
      position: absolute;
      width: 6%;
      z-index: 1;
      right: 20%;
      top: 12vw;
    }

    &__car {
      position: absolute;
      width: 30%;
      right: -2%;
      bottom: 2vw;
    }
  }
}
</style>
