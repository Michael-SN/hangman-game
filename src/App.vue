<template>
  <div id="app">
    <div class="header-game">
      <h1>Hangman Game</h1>
    </div>

    <section id="start" v-if="screen === 'start'">
      <Formulario v-if="step === 'word'"
        title="Define the word"
        button='Next'        
        :action="defineWord"
      />

      <Formulario v-if="step === 'tip'"
        title="Define the Tip"
        button='Next'        
      />
    </section>
    <section id="game" v-if="screen === 'game'">
      Playing
    </section>
  </div>
</template>

<script>
import './css/global.css'
import Formulario from './components/Formulario.vue'

export default {
  name: 'App',  
  data() {
    return {
      screen :'start',
      step: 'word',
      word: '',
      tip: ''
    }
  },
  components: {
    Formulario    
  },
  methods: {
    defineWord(word) {
      this.word = word
      this.step = 'tip'
    },
    defineTip(tip) {
      this.tip = tip
      this.screen= 'game',
      this.step = 'game'     
    }
  }
}
</script>

<style>
#app {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
</style>
