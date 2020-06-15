<template>
  <div class="city">
    <div class="city__left">
      <Perspective
        imageFolder="houses"
        :imageFilenames="houses"
        alt="Maisons"
        class="city__left__houses"
        :xOffset="6"
        :yOffset="18"
      />
      <div class="city__left__text">
        <h2 class="city__left__title">
          Aidez Mamie Josette à <br /><em>parcourir la ville :</em>
        </h2>
        aller chez le coiffeur, aller acheter ses œufs au supermarché ou encore
        récupérer son pain à la boulangerie.
      </div>
    </div>
    <div class="city__right">
      <div class="city__right__background"></div>
      <Perspective
        imageFolder="houses"
        :imageFilenames="buildings"
        alt="Buildings"
        class="city__right__buildings"
        :xOffset="6"
        :yOffset="-18"
        :reversed="true"
      />
      <Perspective
        imageFolder="houses"
        :imageFilenames="shops"
        alt="Magasins"
        class="city__right__shops"
        :xOffset="0"
        :yOffset="-22"
        :reversed="true"
      />
      <WebPicture
        class="city__right__truck"
        alt="Camion"
        filename="van_1_side_0"
        folder="street"
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
        "house_w_tower_side",
        "house_w_stairs_side_V2",
        "house_simple_side"
      ],
      buildings: [
        "building_w_rolling_store",
        "building2_floor_w_canopy_2_side",
        "building2_floor_w_canopy_side"
      ],
      shops: ["bakery_side", "supermarket_side"]
    };
  }
};
</script>

<style lang="scss">
.city {
  margin-top: 20vh;
  display: flex;

  &__left,
  &__right {
    width: 50%;
  }

  &__left {
    position: relative;
    &__houses {
      width: 40%;
      margin-left: 8vw;
    }
    &__text {
      float: right;
      width: 55%;
      margin-top: 20vh;
      min-width: 500px;
      font-size: 1.75rem;
      color: #5959C9;
    }

    &__title {
      font-size: inherit;
      margin: 0;

      em {
        color: #FCB322;
        font-style: normal;
      }
    }
  }

  &__right {
    overflow: hidden;
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    position: relative;
    padding-bottom: 30vh;
    &__buildings {
      width: 30%;
      margin: 30% 10% 10% 10%;
    }
    &__shops {
      position: relative;
      width: 45%;
      right: 20%;

      & > *:nth-of-type(2) {
        width: 130%;
      }
    }
    &__truck {
      position: absolute;
      z-index: 1;
      width: 30%;
      right: 5%;
      bottom: 0;
    }
    &__background {
      position: absolute;
      width: 18%;
      height: 80%;
      background-color: #FFEECF;
      border-radius: 42px 0 0 42px;
    }
  }
}
</style>
