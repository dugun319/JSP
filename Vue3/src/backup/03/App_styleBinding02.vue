<template>
  <div>
    <div :style="styleObject">
      독일에서 재기를 노린 에릭 다이어가 구단 상황으로 인해 스텝이 꼬이고 말았다. 자칫 잘못하면
      다이어는 손흥민과도 작별할 수 있는 상황에 처했다. 스카이스포츠 독일이 28일(한국시간) 뮌헨이
      계약을 맺은 2023-2024시즌을 끝으로 그를 더이상 활용하지 않을 것이라고 전망했다.
    </div>
    <button @click="fontIncrease('-')">Minus</button>
    <button v-on:click="fontIncrease('+')">Plus</button>
    <button v-on:click="colorChange">ColorChange</button>
  </div>
</template>

<script>
import { reactive, ref } from 'vue';

export default {
  setup () {
    const fontSize      = ref(12)
    const fontIncrease  = (sign)=>{
      //console.log('fontIncrease() is started')
      console.log('fontIncrease() sign -> ' + sign)
      if(sign === '-'){
        fontSize.value--
        styleObject.fontSize = fontSize.value + 'px'
      } else {
        fontSize.value++
        styleObject.fontSize = fontSize.value + 'px'
      }
    }

    const colorList   = ref(['red', 'orange', 'yellow', 'green', 'blue', 'navy', 'purple'])
    const colorVal    = ref('red')
    const colorChange = ()=> {      
      console.log('colorChange colorVal -> ' + colorVal.value)
      if(colorVal.value == 'red'){
        colorVal.value    = 'blue'
        styleObject.color = colorVal.value
      } else {
        colorVal.value    = 'red'
        styleObject.color = colorVal.value
      }
    }

    const styleObject   = reactive({
      color : 'red',
      fontSize : '12px'
    })    

    return {
      fontSize,
      fontIncrease,
      styleObject,
      colorVal,
      colorList,
      colorChange
    }
  }
}
</script>

<style lang="scss" scoped>

</style>