import Vue from 'vue'
import router from './router/index';
import store from './store/index';
import "./scss/reset.css";
//vue滑块
import VueAwesomeSwiper from 'vue-awesome-swiper'



let Vue= new Vue({
  el: '#app',
  router,
  store,
  VueAwesomeSwiper
  // render: h => h(Index)
})

//Vue.use(VueAwesomeSwiper) 
