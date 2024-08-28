<template>
  <div>
    <h4>{{ message }}</h4>
    <button v-on:click="reverseCall">ReverseCall</button>
    <h4>{{ reverseMessage }}</h4>
  </div>
</template>

<script>
import { ref, watch } from 'vue';

export default {
  setup () {
    const message         = ref('Hello Vue3')
    const reverseMessage  = ref('')
    const reverseCall     = ()=> {
      console.log('reverseCall is strated')
      reverseMessage.value = message.value.split('').reverse().join()
    }

    watch(message, reverseCall)

    return {
      message,
      reverseMessage,
      reverseCall
    }
  }
}
</script>

<style lang="scss" scoped>

</style>