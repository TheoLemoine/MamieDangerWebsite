<template>
  <img
    src="../assets/google-play-badge.svg"
    alt="Bouton play store"
    class="google-play-button"
  />
</template>

<style lang="scss">
@import "../scss/_mixins.scss";

.google-play-button {
  width: 190px;

  @include media-phone {
    width: 140px;
  }
}
</style>
