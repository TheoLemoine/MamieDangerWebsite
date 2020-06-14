<template>
  <a href="#" class="download-button">Télécharger</a>
</template>

<style lang="scss">
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

  filter: drop-shadow(0px 10px 27px rgba(0, 0, 0, 0.22));

  &::before,
  &::after {
    content: "";
    display: inline-block;
    position: absolute;
    width: 100%;
    height: 100%;
    border-radius: 15px;
  }

  &::before {
    top: 0;
    left: 0;
    z-index: -1;
    background: linear-gradient(
      180deg,
      #ffeecf -13.22%,
      #fcb322 22.79%,
      #fcb322 74.43%,
      #ffdfab 113.33%
    );
  }

  &::after {
    z-index: -2;
    background-color: #D36582;
    left: -4px;
    top: 4px;
  }
}
</style>
