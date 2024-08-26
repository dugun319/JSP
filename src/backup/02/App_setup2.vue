<template>
  <div>
    <p>{{ counter }}</p>
    <p>{{ message }}</p>
    <button @click="increment">CLICK</button>
  </div>
</template>

<script>
import { ref } from 'vue';

export default {
  setup () {
    const counter     = ref(0);

    const increment   = ()=> {
      counter.value++
    }

    const message     = ref('HELLO vue3')

    return {
      counter,
      increment,
      message
    }
  }
}
</script>

<style lang="scss" scoped>

</style>