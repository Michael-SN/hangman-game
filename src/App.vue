<template>
  <div id="app">
    <div class="container">
      <SwitchLanguage />
      <div class="header-game">
        <h1>{{ $t("main.title") }}</h1>
      </div>

      <section id="start" v-if="screen === 'start'">
        <Formulario
          v-if="step === 'word'"
          :title="$t('main.set-word')"
          :button="$t('main.next-button')"
          :action="defineWord"
        />

        <Formulario
          v-if="step === 'tip'"
          :title="$t('main.set-tip')"
          :button="$t('main.next-button')"
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
          :letters="letters"
          :play="play"
          :playAgain="playAgain"
        />
      </section>
    </div>
  </div>
</template>

<script>
import "./css/global.css";
import Formulario from "./components/Formulario.vue";
import Game from "./components/Game.vue";
import SwitchLanguage from "./components/SwithLanguage.vue";

export default {
  name: "App",
  data() {
    return {
      screen: "start",
      step: "word",
      word: "",
      tip: "",
      letters: [],
      erros: 0,
    };
  },
  components: {
    Formulario,
    Game,
    SwitchLanguage,
  },
  mounted() {
    this.$i18n.locale = "en";
  },
  methods: {
    defineWord(word) {
      this.word = word;
      this.step = "tip";
    },
    defineTip(tip) {
      this.tip = tip;
      (this.screen = "game"), (this.step = "game");
    },
    checkLetter(letter) {
      return this.letters.find(
        (item) => item.toLowerCase() === letter.toLowerCase()
      );
    },
    play(letter) {
      this.letters.push(letter);

      // Error validation function
      this.checkError(letter);
    },
    checkError(letter) {
      let _word = this.word.toLowerCase();
      let _letter = letter.toLowerCase();

      if (_word.indexOf(_letter) >= 0) return this.correctLetters();

      this.erros++;

      if (this.erros === 6) this.step = "hanged";
    },
    correctLetters() {
      let _wordSplited = this.word.split("");
      let wordWithSingleLetters = [...new Set(_wordSplited)];

      if (wordWithSingleLetters.length === this.letters.length - this.erros) {
        this.step = "winner";
      }
    },
    playAgain() {
      this.word = "";
      this.tip = "";
      this.erros = 0;
      this.letters = [];
      this.screen = "start";
      this.step = "word";
    },
  },
};
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

.container {
  padding: 0 24px;
}
.header-game {
  margin-bottom: 32px;
  text-align: center;
}
</style>
