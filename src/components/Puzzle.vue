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
    <div class="description">
      A travers différents niveaux, vous devrez non seulement esquiver les
      voitures mais aussi dégager le passage, trouver les issues dans ce
      <strong>véritable casse-tête urbain</strong>.
    </div>
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
import WebPicture from "./WebPicture";

export default {
  components: {
    Perspective,
    WebPicture
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
.puzzle {
  position: relative;
  overflow: hidden;
  z-index: 1;
  padding: 20vh 0 10vh 0;
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
  }

  .caddies {
    position: relative;
    top: 10vh;
    width: 12vw;
    margin-left: 4vw;
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

      &:nth-of-type(4) {
        right: 10vw;
      }

      &:nth-of-type(3) {
        right: 2vw;
        bottom: 8vh;
      }

      &:nth-of-type(2) {
        right: -2vw;
        bottom: 15vh;
      }

      &:nth-of-type(1) {
        right: 8vw;
        bottom: 15vh;
      }
    }
  }
  .dumpster {
    position: absolute;
    right: 4vw;
    bottom: 24vh;
    width: 12vw;
  }
}
</style>
