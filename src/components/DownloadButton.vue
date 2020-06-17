<template>
  <a
    href="https://theolemoine.net/storage/projects/mamie-danger.apk"
    class="download-button"
    download
    >Télécharger</a
  >
</template>

<style lang="scss">
@import "../scss/_mixins.scss";

.download-button {
  font-family: "panton-black", sans-serif;
  color: #ffeecf;
  font-size: 1.35rem;
  text-decoration: none;
  text-transform: uppercase;

  position: relative;
  padding: 12px 20px;
  border-radius: 15px;
  z-index: 1;

  filter: drop-shadow(0px 3px 10px rgba(0, 0, 0, 0.4));

  @include media-phone {
    font-size: 1rem;
    padding: 8px 15px;
  }

  &::before,
  &::after {
    content: "";
    display: inline-block;
    position: absolute;
    width: 100%;
    height: 100%;
    border-radius: 15px;
  }

  &:hover {
    &::before {
      box-shadow: 0 20px 20px -20px #00000022 inset,
        0 -20px 20px -20px #00000022 inset;
    }
    &::after {
      transform: translate3d(-2px, 2px, 0);
    }
  }

  &::before {
    top: 0;
    left: 0;
    z-index: -1;
    background: #fcb322;
    transition: box-shadow 200ms ease-out;
    box-shadow: 0 20px 20px -20px #ffffffc4 inset,
      0 -20px 20px -20px #ffffffc4 inset;
  }

  &::after {
    z-index: -2;
    background-color: #D36582;
    left: -4px;
    top: 4px;
    transition: transform 200ms ease-out;
  }
}
</style>
