<template>
  <div class="keyboard">
    <button class="key-btn" v-for="(letter, key) in alphabetLetters" :key="key">
        {{ letter.toUpperCase() }}
    </button>
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: 'Keyboard',
  props: {
    letter: Array
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

</style>