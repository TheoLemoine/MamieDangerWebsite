import Vue from "vue";
import App from "./App.vue";
import "@/scss/_typo.scss";
import "@/scss/_general.scss";

Vue.config.productionTip = false;

new Vue({
  render: h => h(App)
}).$mount("#app");
