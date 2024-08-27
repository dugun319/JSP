<template>
  <div>
    <h2 v-if="visible">HELLO Vue3</h2>
    <h2 v-else>FALSE</h2>
    <button v-on:click="visible = !visible">TOGGLE</button>
    <hr>
    <hr>
    <button v-on:click="type = 'A'">A</button> &nbsp;&nbsp;
    <button v-on:click="type = 'B'">B</button> &nbsp;&nbsp;
    <button v-on:click="type = 'C'">C</button> &nbsp;&nbsp;
    <button v-on:click="type = 'D'">D</button>
    <h2 v-if="type ==='A'">TYPE is A</h2>
    <h2 v-else-if="type ==='B'">TYPE is B</h2>
    <h2 v-else-if="type ==='C'">TYPE is C</h2>
    <h2 v-else-if="type ==='D'">TYPE is D</h2>
    <h2 v-else>TYPE is not Defined</h2>
    <template v-if="visible">
      <h1>News</h1>
      <h3>'축구종가' 잉글랜드 대표팀 첫 외국인 사령탑 에릭손 감독 별세</h3>
      <h3>물바다 된 北...김정은, 中과 피해 '극과극' 상황에 분노?</h3>
    </template>
    <hr>
    <hr>
    <button v-on:click="ok = !ok">OK TOGGLE</button>
    <h1 v-show="ok">Show Title</h1>
  </div>
</template>

<script>
import { ref } from 'vue';

export default {
  setup () {
    const visible = ref(false)
    const type    = ref('A')
    const ok      = ref(false)

    return {
      visible,
      type,
      ok
    }
  }
}
</script>

<style lang="scss" scoped>

</style>