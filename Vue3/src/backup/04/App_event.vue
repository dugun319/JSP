<template>
  <div>
    <button @click="printEventInfo('Hello Vue3', $event)">Inline Event Handler</button>
    <hr>
    <hr>
    <input type="text" @keyup="onKeyUpHandler" />
  </div>
</template>

<script>
export default {
  setup () {
    const printEventInfo = (message, event) => {
      console.log('message -> ', message)
      console.log('event.target -> ', event.target)
      console.log('event.target.tagName -> ', event.target.tagName)
      console.log('event -> ', event)
    }

    const onKeyUpHandler = (event) => {
      console.log('event.key : ', event.key)
    }

    return {
      printEventInfo,
      onKeyUpHandler
    }
  }
}
</script>

<style lang="scss" scoped>

</style>