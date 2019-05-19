import Vue from 'vue';
import VueAnalytics from 'vue-analytics';
import App from './App.vue';
import router from './router';
import store from './store';

Vue.use(VueAnalytics, {
  id: 'UA-9423822-23',
  router,
});

Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: h => h(App),
}).$mount('#app');
