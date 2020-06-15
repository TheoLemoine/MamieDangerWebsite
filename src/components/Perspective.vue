<template>
  <div class="perspective">
    <WebPicture
      v-for="(filename, index) in imageFilenames"
      :key="index"
      :folder="imageFolder"
      :filename="filename"
      :alt="alt"
      class="perspective__image"
      :style="getStyle(index)"
    />
  </div>
</template>

<script>
import WebPicture from "./WebPicture";

export default {
  components: {
    WebPicture
  },
  props: {
    imageFilenames: Array,
    imageFolder: String,
    alt: String,
    xOffset: Number,
    yOffset: Number,
    reversed: Boolean
  },
  methods: {
    positiveOffset(baseOffset) {
      return {
        left: `${baseOffset + this.xOffset}%`,
        bottom: `${this.yOffset}%`
      };
    },
    negativeOffset(baseOffset) {
      return {
        left: `${-baseOffset - this.xOffset}%`,
        bottom: `${-this.yOffset}%`
      };
    },
    getStyle(index) {
      const baseOffset = this.imageFilenames.length == 3 ? 50 : 33;
      let offset = {};
      if (index == 0) offset = this.negativeOffset(baseOffset);
      if (index == this.imageFilenames.length - 1)
        offset = this.positiveOffset(baseOffset);

      offset.position = "absolute";
      if (this.imageFilenames.length < 3) {
        if (index == 0) offset.position = "relative";
      } else {
        if (index == Math.floor(this.imageFilenames.length / 2.))
          offset.position = "relative";
      }

      offset.zIndex = this.reversed
        ? index + 1
        : this.imageFilenames.length - index;

      return offset;
    }
  }
};
</script>

<style lang="scss">
.perspective {
  position: relative;
  &__image {
    display: inline-block;
    width: 100%;
  }
}
</style>
