<template>
  <div>
    <ul>
      <template v-for="(item, index) in eventItems" :key="item.id">
        <li>ID : {{ item.id }} INDEX : {{ index }}, {{ item.message }}</li>
      </template>      
    </ul>
    <ul>
      <template v-for="(value, key, index) in objects" :key="key">
        <li>{{ index }} - {{ key }} : {{ value }}</li>
      </template>
    </ul>
    <ul>
      <template v-for="(item, index) in items" :key="item.id">
        <li>ID : {{ item.id }} INDEX : {{ index }}, {{ item.message }}</li>
      </template>      
    </ul>
  </div>
</template>

<script>
import { computed, reactive, ref } from 'vue';

export default {
  setup () {
    const items = reactive([
      {id: 1, message: 'JAVA'},
      {id: 2, message: 'SPRING'},
      {id: 3, message: 'HTML'},
      {id: 4, message: 'JavaScript'},
      {id: 5, message: 'Vue3'}
      ])
    const eventItems = computed(()=> items.filter((item) => item.id % 2 === 0))

    const objects = ref({
      title: '제목',
      author: 'Richard',
      published: '2024-03-04'
    })

    return {
      items,
      eventItems,
      objects
    }
  }
}
</script>

<style lang="scss" scoped>

</style>