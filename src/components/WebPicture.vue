<template>
  <picture>
    <source
      v-for="(ext, index) in extensions"
      :type="`image/${ext}`"
      :key="index"
      :srcset="getSrc(ext)"
    />
    <img :src="lastSrc" :alt="alt" />
  </picture>
</template>

<script>
export default {
  props: {
    filename: String,
    folder: String,
    alt: String,
    extensions: {
      type: Array,
      default: () => ["webp", "png"]
    }
  },
  methods: {
    getSrc(ext) {
      return require(`../assets/${this.folder}/${this.filename + "." + ext}`);
    }
  },
  computed: {
    lastSrc() {
      return this.getSrc(this.extensions[this.extensions.length - 1]);
    }
  }
};
</script>

<style scoped lang="scss">
img {
  width: 100%;
}
</style>
