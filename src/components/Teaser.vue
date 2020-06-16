<template>
  <div class="teaser">
    <div class="teaser__upper">
      <div class="teaser__upper__background">
        <div class="background"></div>
        <WebPicture
          class="character"
          folder="characters"
          filename="perso_2_0101"
          alt="Le personnage principal"
        />
      </div>
      <div class="teaser__upper__description description">
        <div class="description__text">
          Dans <strong class="yellow">Mamie Danger</strong>, vous incarnez un ou
          une jeune étudiante qui fait la rencontre hasardeuse de
          <strong class="purple">Mamie Josette</strong>, une mamie qui a bien du
          mal à traverser la rue seule.
        </div>
      </div>
    </div>
    <div class="teaser__lower">
      <h1 class="teaser__title">Teaser du jeu</h1>
      <div class="teaser__video">
        <div class="teaser__video__fitter">
          <iframe
            src="https://player.vimeo.com/video/345895589"
            frameborder="0"
            allow="autoplay; fullscreen"
            allowfullscreen
          ></iframe>
        </div>
      </div>
      <div class="teaser__description">
        <div class="background"></div>
        <div class="teaser__description__text">
          Téléchargez le jeu dès à présent en cliquant ci-dessous
          <em>(uniquement disponible sous Android)</em>
        </div>
      </div>
      <DownloadButton class="button" />
    </div>
  </div>
</template>

<script>
import WebPicture from "./WebPicture";
import DownloadButton from "./DownloadButton";

export default {
  components: {
    WebPicture,
    DownloadButton
  }
};
</script>

<style scoped lang="scss">
@import "../scss/_mixins.scss";

.teaser {
  position: relative;
  &__upper {
    display: flex;
    height: 50vh;

    @include media-phone {
      height: auto;
    }

    @include media-phone {
      flex-direction: column;
    }

    &__description,
    &__background {
      position: relative;
      width: 50%;
      @include media-phone {
        width: 100%;
      }
    }

    &__background {
      @include media-phone {
        position: absolute;
        bottom: 39%;
      }
    }
    .background {
      position: absolute;
      top: 20vh;
      width: 90%;
      height: 75vh;
      background-color: #FCB322;
      opacity: 0.6;
      border-radius: 0 42px 42px 0;

      @include media-phone {
        display: none;
      }
    }
  }

  &__lower {
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    z-index: 1;

    @include media-phone {
      margin-top: 30vh;
    }
  }

  &__title {
    color: #5959C9;
    font-size: 3rem;
    font-weight: bold;
    text-align: center;
    @include media-phone {
      font-size: 2rem;
      margin: 5px 0;
    }
  }

  &__video {
    position: relative;
    z-index: 1;
    width: 80vw;
    max-width: 980px;

    &__fitter {
      padding-top: 45%;
      & > * {
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        width: 100%;
        height: 100%;
      }
    }

    @include media-phone {
      width: 100vw;
    }
  }

  &__description {
    position: relative;
    width: 100%;

    &__text {
      position: relative;

      width: 35vw;
      max-width: 500px;
      margin: 24px auto 30px auto;

      text-align: center;
      color: #FFEECF;
      font-size: 1.2rem;
      font-style: italic;
      font-weight: bold;

      @include media-phone {
        font-size: 0.9rem;
        width: 65vw;
        margin: 12px auto 15px auto;
      }

      em {
        font-weight: normal;
      }
    }

    .background {
      position: absolute;
      top: -45px;
      width: 70%;
      height: 180px;
      right: 0;
      background-color: #D36582;
      opacity: 0.8;
      border-radius: 15px 0 0 15px;

      @include media-phone {
        top: -25px;
        height: 150px;
        width: 85%;
      }
    }
  }
}

.character {
  position: absolute;
  width: 25%;
  left: 5vw;
  top: -30%;
  @include media-phone {
    bottom: 0;
    top: unset;
    width: 30%;
  }
}

.description {
  display: flex;
  justify-content: center;

  &__text {
    width: 50%;
    max-width: 400px;
    font-size: 1.25rem;
    line-height: 1.4;

    @include media-phone {
      width: 80%;
    }

    strong {
      font-weight: bold;
      &.yellow {
        color: #FCB322;
      }
      &.purple {
        color: #5959C9;
      }
    }
  }
}
</style>
