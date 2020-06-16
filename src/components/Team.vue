<template>
  <div class="team">
    <h2 class="team__title">
      <div class="team__title__background"></div>
      Qui se cache derrière mamie danger ?
    </h2>
    <div class="team__list">
      <TeamMember
        v-for="(member, index) in teamMembers"
        :key="index"
        :name="member.name"
        :role="member.role"
        :imageFilename="member.imageFilename"
        :workName="member.workName"
        :workUrl="member.workUrl"
      />
    </div>
  </div>
</template>

<script>
import TeamMember from "./TeamMember";

export default {
  data() {
    return {
      teamMembers: [
        {
          name: "Ronan Champigny",
          role: "Designer",
          imageFilename: "ronan.jpg",
          workName: "Vimeo",
          workUrl: "https://vimeo.com/ronanchampigny"
        },
        {
          name: "Marie-Liesse de Solages",
          role: "Designer",
          imageFilename: "marie-liesse.jpg",
          workName: "Portfolio",
          workUrl: "https://marieliesse-desolages.github.io/"
        },
        {
          name: "Léon Baudouin",
          role: "Développeur",
          imageFilename: "leon.jpg",
          workName: "Portfolio",
          workUrl: "https://leonbaudouin.fr"
        },
        {
          name: "Théo Lemoine",
          role: "Développeur",
          imageFilename: "theo.jpg",
          workName: "Portfolio",
          workUrl: "https://theolemoine.dev"
        }
      ]
    };
  },
  components: {
    TeamMember
  }
};
</script>

<style lang="scss" scoped>
@import "../scss/_mixins.scss";

.team {
  margin-bottom: 20vh;
  @include media-phone {
    margin-bottom: 8vh;
  }
  &__title {
    position: relative;
    padding-left: 12.5vw;
    font-size: 2.7rem;
    color: #5959C9;
    max-width: 600px;
    margin-bottom: 25vh;

    @include media-phone {
      font-size: 2.1rem;
      margin-bottom: 8vh;
    }

    &__background {
      height: 600%;
      position: absolute;
      z-index: -1;
      width: 40%;
      left: 0;
      top: -230%;
      background-color: #FCB322;
      border-radius: 0 42px 42px 0;

      @include media-phone {
        height: 200%;
        top: -50%;
      }
    }
  }
  &__list {
    margin: 0 10vw;
    display: flex;
    justify-content: space-between;
    @include media-phone {
      flex-wrap: wrap;
      margin: 0 5vw;
    }
  }
}
</style>
