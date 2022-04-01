<template>
  <div class="word">
    <div class="letters">
      <div class="letter" v-for="(letter, key) in word" :key="key">
        {{ (checkLetter(letter) || step === 'hanged') ? letter : '' }}
      </div>
    </div>
    <div class="tip">
      <p>Tip: <strong>{{ tip }}</strong></p>
    </div>
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: 'Word',
  props: {
    word: String,
    tip: String,
    checkLetter: Function,
    step: String
  },
  data() {
    return {
      // 
    }
  },
  methods: {
    // 
  },  
}
</script>

<style scoped>
.word {
  text-transform: uppercase;
  display: flex;
  flex-direction: column;
  text-align: center;
  align-items: center;
}

.letters {
  display: flex;  
  margin-bottom: .8rem;
}

.letters .letter {
  height: 1.875rem;
  width: 1.875rem;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 0 .5rem;
  border-bottom: 1px solid var(--color-text-light);  
}
</style>