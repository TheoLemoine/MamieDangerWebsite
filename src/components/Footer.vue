<template>
  <div class="footer">
    <WebPicture
      class="footer__image"
      alt="Photo d'une ville"
      filename="plan_maison"
      folder="background"
      :extensions="['jpeg', 'webp']"
    />
  </div>
</template>

<script>
import WebPicture from "./WebPicture";

export default {
  components: {
    WebPicture
  }
};
</script>

<style lang="scss">
.footer__image {
  width: 100vw;
  img {
    vertical-align: middle;
  }
}
</style>
