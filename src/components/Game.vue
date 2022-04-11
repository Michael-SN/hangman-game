<template>
  <div class="game">
    <Forca :erros="erros" />

    <Word :word="word" :tip="tip" :checkLetter="checkLetter" :step="step" />

    <Keyboard
      v-if="step === 'game'"
      :letters="letters"
      :checkLetter="checkLetter"
      :play="play"
    />

    <FinalGame
      v-if="step != 'game'"
      :step="step"
      :text="
        step === 'winner'
          ? $t('game.final-message[0]')
          : $t('game.final-message[1]')
      "
      :playAgain="playAgain"
    />
  </div>
</template>

<script>
import Forca from "./Forca";
import Word from "./Word";
import Keyboard from "./Keyboard";
import FinalGame from "./FinalGame.vue";

export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: "Game",
  props: {
    erros: Number,
    word: String,
    tip: String,
    step: String,
    checkLetter: Function,
    letters: Array,
    play: Function,
    playAgain: Function,
  },
  data() {
    return {
      //
    };
  },
  methods: {
    //
  },
  components: {
    Forca,
    Word,
    Keyboard,
    FinalGame,
  },
};
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