<template>
  <div>
    <h3>{{ msg }}</h3>
    <h3 v-text="msg"></h3>
    <h3 v-html="htmlStr"></h3>
    <h3 v-text="htmlStr"></h3>
    <p>v-pre를 사용하면 DOM 이 컴파일에서 제외되어 그대로 출력</p>
    <h3 v-pre>{{ msg HELLO }}</h3>
    <h3 v-once>{{ msg }} !!!!!</h3>
  </div>
</template>

<script>
import { ref } from 'vue';

export default {
  setup () {
    const msg     = ref('HELLO WORLD')
    const htmlStr = ref('<h2>HELLO!!!</h2>')

    return {
      msg,
      htmlStr
    }
  }
}
</script>

<style lang="scss" scoped>

</style>