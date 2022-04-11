<template>
  <div class="switch-content">
    <div class="switch-text">
      <span>{{ $t("main.switch-lang") }}</span>
    </div>
    <div class="switch-language">
      <input type="checkbox" id="switch" v-on:change="handleSetLanguage" />
      <label for="switch">
        <span>{{ lang[0] }}</span>
        <span>{{ lang[1] }}</span>
      </label>
    </div>
  </div>
</template>

<script>
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: "Switch-language",
  props: {
    //
  },
  data() {
    return {
      lang: ["PT", "EN"],
    };
  },
  methods: {
    // handleSetLanguage(e) {
    //   let lang = ["en", "pt"];
    //   let checked = Number(e.target.checked);

    //   this.$i18n.locale = lang[checked];
    // },
    handleSetLanguage({ target: { checked } }) {
      this.$i18n.locale = checked ? "pt" : "en";
    },
  },
};
</script>

<style scoped>
.switch-content {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1.2rem;
}

.switch-language {
  width: 65px;
  display: flex;
}
.switch-language input {
  width: 0;
  height: 0;
  visibility: hidden;
}
.switch-language label {
  width: 100%;
  height: 30px;
  padding: 0 8px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: var(--color-text-dark);
  border-radius: 20px;
  position: relative;
  transition: 0.3s;
}

.switch-language label:after {
  content: "";
  display: block;
  width: 25px;
  height: 25px;
  border-radius: 100%;
  background: var(--color-background);
  position: absolute;
  left: 4px;
  transition: 0.3s;
  cursor: pointer;
}

label span {
  display: block;
  font-size: 14px;
  color: var(--color-text-light);
}

.switch-language input:checked + label {
  background: var(--color-background-button);
}

.switch-language input:checked + label:after {
  left: calc(100% - 29px);
}
</style>