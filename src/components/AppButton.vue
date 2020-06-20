<template>
  <div class="button">
    <GooglePlayButton class="button__google" />
    <DownloadButton class="button__download" />
  </div>
</template>

<script>
import GooglePlayButton from "./GooglePlayButton";
import DownloadButton from "./DownloadButton";

export default {
  components: {
    GooglePlayButton,
    DownloadButton
  }
};
</script>

<style lang="scss" scoped>
@import "../scss/_mixins.scss";

.button {
  &__google {
    display: block;
  }
  &__download {
    display: none;
  }
  @include media-phone {
    &__google {
      display: none;
    }
    &__download {
      display: block;
    }
  }
}
</style>
