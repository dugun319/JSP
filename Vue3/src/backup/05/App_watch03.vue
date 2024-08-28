<template>
  <div>
    <form @submit.prevent>
      <!-- // @submit.prevent -> event 실행을 막음 -->
      <input type="text" v-model.lazy="title" placeholder="Title" />
      <!-- // v-model.lazy 새로운 이벤트가 발생하기 전까지 반응을 멈춤 -->
      <textarea v-model="contents" placeholder="Contents"></textarea>
      <hr><hr><hr>
      <button v-on:click="save(title, contents)">SAVE</button>
    </form>
  </div>
</template>

<script>
import { ref, watchEffect } from 'vue';

export default {
  setup () {
    const title     = ref('')
    const contents  = ref('')
    const save = (title, contents) => {
      console.log(`title : ${title}, contents : ${contents} are saved`)
    }
    // watch는 new/old value
    // watchEffect는 new value & 대상을 명시하지 않아도 됨.
    watchEffect(()=> {
      console.log('watchEffect()')
      save(title.value, contents.value)
    })

    return {
      title,
      contents,
      save
    }
  }
}
</script>

<style lang="scss" scoped>

</style>