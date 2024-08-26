<template>
  <div>
    <h2>Reactive Message</h2>
    <p>{{ reactiveMessage }}</p>
    <h2>Simple Message</h2>
    <p>{{ simpleMessage }}</p>
  </div>
</template>

<script>
import { ref } from 'vue';

export default {
  setup () {
    console.log('setup()')
    const reactiveMessage     = ref('Hi reactiveMessage')
    const addReactiveMessage  = ()=> {
      reactiveMessage.value   = reactiveMessage.value + '!'
    } 

    let simpleMessage         = 'Hi simpleMessage'
    const addSimpleMessage    = ()=> {
      simpleMessage           = simpleMessage + '!'
    }
    return {
      reactiveMessage,
      addReactiveMessage,
      simpleMessage,
      addSimpleMessage
    }
  }
}
</script>

<style lang="scss" scoped>

</style>