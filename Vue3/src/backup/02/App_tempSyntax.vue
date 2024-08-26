<template>
  <div>
    <h2>Interpolation</h2>
    <p>{{ message }}</p>
    <p v-once>{{ message }}</p>
    <button v-on:click="message = message + '!'">CLICK</button>
    <hr>
    <hr>
    <h2>HTML</h2>
    <p>{{ rawHTML }}</p>
    <p v-html="rawHTML"></p>
    <hr>
    <hr>
    <h2>Property Binding</h2>
    <div :title="dynamicTitle">마우스를 올려보세요</div>
    <input type="text" value="Hong GilDong" :disabled="isInputDisabled"/>
    <input v-bind="attrs" />
  </div>
</template>

<script>
import { ref } from 'vue';

export default {
  setup () {
    const message         = ref('Hello~~~')
    const rawHTML         = ref('<h1>HELLO</h1>')
    const dynamicTitle    = ref('HELLO!@@@!!!')
    const isInputDisabled = ref(true)
    const attrs           = ref({
      type: 'text',
      value:'abc',
      disabled: true
    })

    return {
      message,
      rawHTML,
      dynamicTitle,
      isInputDisabled,
      attrs
    }
  }
}
</script>

<style lang="scss" scoped>

</style>