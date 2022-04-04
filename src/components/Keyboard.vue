<template>
  <div class="keyboard">
    <button 
      class="key-btn" v-for="(letter, key) in alphabetLetters" 
      :key="key"
      :disable="checkLetter(letter)"
      @click="play(letter)"
    >
      {{ letter }}
    </button>
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: 'Keyboard',
  props: {
    letter: Array,
    checkLetter: Function,
    play: Function
  },
  data() {
    return {
      alphabetLetters: ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    }
  },
  methods: {
    // 
  },  
}
</script>

<style scoped>
.keyboard {
  display: grid;
  grid-template-columns: repeat(13, 35px);
  max-width: 100%;
  gap: .5rem;
}

.key-btn {
  text-transform: uppercase;
}
</style>