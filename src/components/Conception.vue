<template>
  <div class="conception">
    <h2 class="conception__title">
      Vous souhaitez en savoir plus sur la conception de notre jeu ?
    </h2>
    <p class="conception__text">
      Pour découvrir tout notre cheminement, les différentes étapes que nous
      avons suivi pour parvenir à la réalisation de ce jeu, vous pouvez
      télécharger ici <strong>dossier de conception</strong>.
    </p>
    <Perspective
      class="conception__houses"
      :imageFilenames="houses"
      imageFolder="houses"
      alt="Maisons"
      :xOffset="50"
      :yOffset="0"
    />
    <div class="conception__background"></div>
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
      houses: [
        "house_w_floor_3_face",
        "house_w_floor_2_face",
        "house_w_floor_face"
      ]
    };
  }
};
</script>

<style scoped lang="scss">
@import "../scss/_mixins.scss";

.conception {
  position: relative;
  display: flex;
  margin: 20vh 0 65vh 0;
  flex-direction: column;
  align-items: center;
  @include media-phone {
    margin: 5vh 0 45vh 0;
  }
  &__title {
    color: #FCB322;
    font-size: 2.5rem;
    width: 45%;
    max-width: 600px;
    @include media-phone {
      width: 80%;
      font-size: 1.8rem;
    }
  }
  &__text {
    margin-left: 40vw;
    max-width: 500px;
    font-size: 1.2rem;
    color: white;

    @include media-phone {
      margin-left: 20vw;
      width: 70%;
    }
  }
  &__background {
    position: absolute;
    align-self: flex-end;
    padding: 13vh 0;
    top: -8vh;
    z-index: -1;
    width: 60%;
    height: 100%;
    background-color: #D36582;
    opacity: 0.9;
    border-radius: 42px 0 0 42px;

    @include media-phone {
      margin-left: 0vw;
      width: 80%;
      height: 80%;
      top: -2vh;
    }
  }
  &__houses {
    position: absolute;
    width: 11vw;
    bottom: -37vh;
    right: 26vw;

    @include media-phone {
      bottom: -24vh;
      width: 28vw;
      right: 28vw;
    }
  }
}
</style>
