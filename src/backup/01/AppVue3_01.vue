<template>
  <div>
      <button v-on:click="increment">Counter : {{ counter }}</button>
  </div>
</template>

<script>
import { onMounted, ref } from 'vue';

export default {
  setup () {
    const counter = ref(0)
    const increment = ()=> {
      counter.value++
      console.log('counter -> ', counter)
    }
    onMounted(()=> {
      console.log('Component is mounted')
    })
    //const

    return {
      counter,
      increment
    }
  }
}
</script>

<style lang="scss" scoped>

</style>