import Vue from 'vue'
import App from './App.vue'
import VueI18n from 'vue-i18n'
import { languages } from './plugins/translate/languages'

Vue.config.productionTip = false

Vue.use(VueI18n)

const i18n = new VueI18n({
  locale: "en",
  messages: languages
})


new Vue({
  render: h => h(App),
  i18n,
}).$mount('#app')
