<template>
  <div class="form">
    <div class="form-title">
      <h3>
        {{ title }}
      </h3>
    </div>
    <input type="text" class="form-input" v-model="inputValue" />
    <button :disable="inputValue.length === 0" @click="onSubmit">
      {{ button }}
    </button>
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: "Formulario",
  props: {
    title: String,
    button: String,
    action: Function,
  },
  data() {
    return {
      inputValue: "",
    };
  },
  methods: {
    onSubmit() {
      this.action(this.inputValue);
      this.inputValue = "";
    },
  },
};
</script>

<style scoped>
.form {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-top: 20px;
}

.form-input {
  padding: 10px 5px;
  border: 0;
  border-radius: 5px;
  margin: 10px 0;
  text-align: center;
  color: var(--color-text-dark);
  outline: none;
  transition: all 0.2s;
  color: #585858;
  font-weight: bold;
  font-family: inherit;
}
</style>