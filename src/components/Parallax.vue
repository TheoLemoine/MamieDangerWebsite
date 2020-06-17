<template>
  <div
    v-bind:class="[
      parallax ? parallaxClass : '',
      fixed ? fixedClass : '',
      containerClass
    ]"
    ref="parallax"
  >
    <slot></slot>
  </div>
</template>

<script>
export default {
  props: {
    parallax: {
      default: true,
      type: Boolean
    },
    speedFactor: {
      default: 0.15,
      type: Number
    },
    fixed: {
      default: false,
      type: Boolean
    },
    breakpoint: {
      default: "(min-width: 968px)",
      type: String
    },
    sectionHeight: {
      default: 70,
      type: Number,
      required: false
    },
    sectionClass: {
      type: String,
      default: "Masthead"
    },
    containerClass: {
      type: String,
      default: "Masthead__image"
    },
    parallaxClass: {
      type: String,
      default: "is-parallax"
    },
    fixedClass: {
      type: String,
      default: "is-fixed"
    },
    direction: {
      type: String,
      default: "up"
    },
    offsetFactor: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      el: null,
      mediaQuery: null,
      parentY: 0
    };
  },
  mounted() {
    this.el = this.$refs.parallax;
    this.parentY = this.getAbsolutePosition(this.el).y;
    window.requestAnimationFrame =
      window.requestAnimationFrame ||
      window.mozRequestAnimationFrame ||
      window.webkitRequestAnimationFrame ||
      window.msRequestAnimationFrame ||
      function(f) {
        setTimeout(f, 1000 / 60);
      };
    this.init();
  },
  methods: {
    animateElement() {
      const progress = this.parentY - window.pageYOffset;
      const offset = (1 + this.offsetFactor) * window.innerHeight;
      const animationValue = (progress - offset) * this.speedFactor;
      this.el.style.transform = `translate3d(0, ${animationValue *
        this.directionValue}px ,0)`;
    },
    scrollHandler() {
      window.requestAnimationFrame(() => {
        this.animateElement();
      });
    },
    setupListener() {
      if (this.mediaQuery.matches) {
        window.addEventListener("scroll", this.scrollHandler, false);
      } else {
        window.removeEventListener("scroll", this.scrollHandler, false);
      }
    },
    init() {
      this.mediaQuery = window.matchMedia(this.breakpoint);
      if (this.mediaQuery) {
        this.mediaQuery.addListener(this.setupListener);
        this.setupListener();
        if (this.mediaQuery.matches) this.animateElement();
      }
    },
    getAbsolutePosition(element) {
      var r = { x: element.offsetLeft, y: element.offsetTop };
      if (element.offsetParent) {
        var tmp = this.getAbsolutePosition(element.offsetParent);
        r.x += tmp.x;
        r.y += tmp.y;
      }
      return r;
    }
  },
  beforeDestroy() {
    window.removeEventListener("scroll", this.scrollHandler, false);
  },
  computed: {
    directionValue() {
      return this.direction === "down" ? +1 : -1;
    }
  }
};
</script>
