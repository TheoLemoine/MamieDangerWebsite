<template>
  <div class="puzzle">
    <div class="cars">
      <Perspective
        imageFolder="street"
        :imageFilenames="cars"
        alt="Voitures"
        class="cars__images"
        :xOffset="10"
        :yOffset="40"
      />
      <div class="cars__background"></div>
    </div>
    <Parallax :offsetFactor="-0.5" direction="down">
      <div class="description">
        A travers différents niveaux, vous devrez non seulement esquiver les
        voitures mais aussi dégager le passage, trouver les issues dans ce
        <strong>véritable casse-tête urbain</strong>.
      </div>
    </Parallax>
    <Perspective
      imageFolder="street"
      :imageFilenames="trolleys"
      alt="Caddies"
      class="caddies"
      :xOffset="5"
      :yOffset="20"
    />
    <WebPicture
      class="dumpster"
      filename="bin_carton_side"
      folder="street"
      alt="Poubelle"
    />
    <div class="boxes">
      <WebPicture
        class="boxes__box"
        filename="box"
        folder="street"
        alt="Carton"
      />
      <WebPicture
        class="boxes__box"
        filename="box"
        folder="street"
        alt="Carton"
      />
      <WebPicture
        class="boxes__box"
        filename="box"
        folder="street"
        alt="Carton"
      />
      <WebPicture
        class="boxes__box"
        filename="box"
        folder="street"
        alt="Carton"
      />
    </div>
  </div>
</template>

<script>
import Perspective from "./Perspective";
import Parallax from "./Parallax";
import WebPicture from "./WebPicture";

export default {
  components: {
    Perspective,
    WebPicture,
    Parallax
  },
  data() {
    return {
      cars: ["car_3_side_180", "car_2_side_180", "car_1_side_180"],
      trolleys: ["caddie_3", "caddie_2"]
    };
  }
};
</script>

<style scoped lang="scss">
@import "../scss/_mixins.scss";

.puzzle {
  position: relative;
  overflow: hidden;
  z-index: 1;
  padding: 20vh 0 10vh 0;
  @include media-phone {
    padding: 3vh 0 22vh 0;
  }
  .cars {
    position: relative;
    width: 30%;
    height: 40vh;
    &__images {
      position: absolute;
      width: 15vw;
      right: 0;
      bottom: 0;
    }
    &__background {
      position: relative;
      bottom: 100px;
      width: 100%;
      height: 100%;
      background-color: #5959C9;
      opacity: 0.8;
      border-radius: 0 30px 30px 0;
    }

    @include media-phone {
      display: none;
    }
  }

  .description {
    max-width: 500px;
    padding: 10vh 0 10vh 37.5%;
    font-size: 1.4rem;
    line-height: 1.5;
    color: #5959C9;
    strong {
      font-weight: bold;
      color: #D36582;
    }
    @include media-phone {
      padding: 0;
      margin: auto;
      width: 80%;
    }
  }

  .caddies {
    position: relative;
    top: 10vh;
    width: 12vw;
    margin-left: 4vw;
    @include media-phone {
      display: none;
    }
  }

  .boxes {
    position: absolute;
    right: 0;
    bottom: 1vh;
    width: 8vw;
    height: 8vw;
    &__box {
      display: inline-block;
      position: absolute;
      width: 8vw;
      @include media-phone {
        width: 20vw;
      }

      &:nth-of-type(4) {
        right: 10vw;
        @include media-phone {
          right: 40vw;
          bottom: 1vh;
        }
      }

      &:nth-of-type(3) {
        right: 2vw;
        bottom: 8vh;
        @include media-phone {
          right: 8vw;
          bottom: 3vh;
        }
      }

      &:nth-of-type(2) {
        right: -2vw;
        bottom: 15vh;
        @include media-phone {
          bottom: 8vh;
        }
      }

      &:nth-of-type(1) {
        right: 8vw;
        bottom: 15vh;
        @include media-phone {
          right: 15vw;
          bottom: 10vh;
        }
      }
    }
  }
  .dumpster {
    position: absolute;
    right: 4vw;
    bottom: 24vh;
    width: 12vw;

    @include media-phone {
      display: none;
    }
  }
}
</style>
