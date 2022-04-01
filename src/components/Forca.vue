<template>
  <div class="forca">
    <img :src="`https://raw.githubusercontent.com/william-costa/wdev-hangman-game-resources/master/images/hangman/${erros}.svg`">
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: 'Forca',
  props: {
    erros: Number
  },
  data() {
    return {
      
    }
  },
  methods: {
    
  }
}
</script>

<style scoped>

.forca img {
  height: 200px;
}


</style>