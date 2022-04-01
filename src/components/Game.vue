<template>
  <div class="game">
    <Forca :erros="erros" />
    <Word 
      :word="word" 
      :tip="tip"
      :checkLetter="checkLetter"
      :step="step"
    />

    <Keyboard 
      :letters="letters"    
    />
  </div>
</template>

<script>

import Forca from './Forca'
import Word from './Word'
import Keyboard from './Keyboard'

export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: 'Game',
  props: {
    erros: Number,
    word: String,
    tip: String,
    step: String,
    checkLetter: Function,
    letters: Array
  },
  data() {
    return {
      // 
    }
  },
  methods: {
    // 
  },
  components: {
    Forca,
    Word,
    Keyboard
  }
}
</script>

<style scoped>

.game {
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
</style>