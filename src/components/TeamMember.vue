<template>
  <div class="teamMember">
    <div class="teamMember__photo">
      <img :src="imageUrl" :alt="name" />
    </div>
    <div class="teamMember__description">
      <span class="teamMember__description__name"
        >{{ firstName }}<br />{{ lastName }}</span
      >
      <span class="teamMember__description__role">{{ role }}</span>
      <span class="teamMember__description__senior">Sénior</span>
      <a :href="workUrl" class="teamMember__description__work">
        {{ workName }}
      </a>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    imageFilename: String,
    name: String,
    role: String,
    workName: String,
    workUrl: String
  },
  computed: {
    imageUrl() {
      return require(`../assets/team/${this.imageFilename}`);
    },
    firstName() {
      return this.name.substr(0, this.name.lastIndexOf(" "));
    },
    lastName() {
      return this.name.split(" ").pop();
    }
  }
};
</script>

<style lang="scss" scoped>
@import "../scss/_mixins.scss";

.teamMember {
  width: 15vw;
  @include media-phone {
    width: 42vw;
    margin-bottom: 5vh;
  }
  &__photo {
    width: 100%;
    margin-bottom: 32px;
    img {
      width: 100%;
      border-radius: 50%;
    }
    @include media-phone {
      margin-bottom: 10px;
    }

    &::before {
      content: "";
      display: inline-block;
      position: absolute;
      z-index: -1;
      width: 15vw;
      height: 15vw;
      border-radius: 50%;
      background-color: #FCB322;
      transform: translate3d(15px, 10px, 0);
      @include media-phone {
        width: 42vw;
        height: 42vw;
        transform: translate3d(7px, 5px, 0);
      }
    }
  }
  &__description {
    width: 100%;
    padding: 5vh 0;
    background-color: transparentize(#5959C9, 0.9);
    border-radius: 25px;
    display: flex;
    flex-direction: column;
    align-items: center;
    font-size: 1.25rem;
    text-align: center;
    @include media-phone {
      font-size: 0.9rem;
      padding: 3vh 0vh;
    }

    &__name {
      color: #5959C9;
      font-weight: bold;
      line-height: 1.4;
      margin-bottom: 12px;
    }

    &__role {
      color: #5959C9;
      margin-bottom: 12px;
    }

    &__senior {
      color: #FCB322;
      font-style: italic;
      margin-bottom: 12px;
    }

    &__work {
      color: #D36582;
      text-decoration: none;
      font-weight: bold;

      &:hover {
        color: #a765d3;
      }
    }
  }
}
</style>
