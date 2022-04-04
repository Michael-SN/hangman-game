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
        :action="defineTip"
      />
    </section>
    <section id="game" v-if="screen === 'game'">      
      <Game 
        :erros="erros"      
        :word="word"
        :tip="tip"
        :checkLetter="checkLetter"
        :step="step"
        :letter="letters"
        :play="play"
      />
    </section>
  </div>
</template>

<script>
import './css/global.css'
import Formulario from './components/Formulario.vue'
import Game from './components/Game.vue'

export default {
  name: 'App',  
  data() {
    return {
      screen :'start',
      step: 'word',
      word: '',
      tip: '',
      letters: [],
      erros: 0
    }
  },
  components: {
    Formulario,
    Game    
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
    },
    checkLetter(letter) {
      return this.letters.find(item => item.toLowerCase() === letter.toLowerCase())
    },
    play(letter) {
      this.letters.push(letter)
      
      // validar erros 
      this.checkError(letter)
    },
    checkError(letter) {
      // se acertor 
      let _word = this.word.toLowerCase()
      if(_word.indexOf(letter >= 0 )) {
        return this.correctLetter()
      }

      this.erros++
      console.log(this.erros)

      if(this.erros === 6) this.step = 'hanged'
    },
    correctLetter() {
      let wordSplited = this.word.split('')
      let uniqueLetters = [...new Set(wordSplited)]

      if(uniqueLetters,length === (this.letters.length - this.erros)) {
        this.step = 'winner'
      }
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

.header-game {
  margin-bottom: 32px;
}
</style>
