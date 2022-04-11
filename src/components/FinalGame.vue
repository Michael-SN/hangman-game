<template>
  <div class="final-game">
    <div :class="`feedback-text ${step}`">
      <p>{{ text }}</p>
    </div>
    <div class="feedback-button">
      <button type="button" @click="playAgain">
        {{ $t("game.restart-button") }}
      </button>
    </div>
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: "Final-game",
  props: {
    step: String,
    text: String,
    playAgain: Function,
  },
  data() {
    return {};
  },
  methods: {},
};
</script>

<style scoped>
.final-game {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.feedback-text p {
  margin: 20px 0;
  font-size: 24px;
  font-weight: bold;
}
.feedback-text.hanged p {
  color: var(--color-text-error);
}

.feedback-text.winner p {
  color: var(--color-text-success);
}
</style>