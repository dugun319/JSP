<template>
  <div>
    <div :style="styleObject">
      한국 축구대표팀의 '임시 사령탑'으로 선임된 황선홍 23세 이하(U-23) 대표팀 감독이
      손흥민(토트넘)과 물리적 충돌을 빚은 이강인(파리 생제르맹)을 주전 선수로 선발할지 여부에 관심이
      쏠리고 있는 가운데, 황 감독이 손흥민과 이강인의 화해를 적극 중재한 것으로 알려져 눈길을 끈다.
    </div>
    <button v-on:click="fontSize--">Minus</button>
    <button v-on:click="fontSize++">Plus</button>
  </div>
</template>

<script>
import { computed, ref } from 'vue';

export default {
  setup () {
    const fontSize     = ref(12)
    const styleObject = computed(()=>{
      return {
        color : 'red',
        fontSize : fontSize.value + 'px'
      }
    })    

    return {
      fontSize,
      styleObject
    }
  }
}
</script>

<style lang="scss" scoped>

</style>