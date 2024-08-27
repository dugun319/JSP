<template>
  <div>
    <h3>book.author : {{ book.author }}</h3>
    <h3>book.title : {{ book.title }}</h3>
    <h3>book.year : {{ book.year }}</h3>
    <h3>book.description : {{ book.description }}</h3>
    <h3>book.price : {{ book.price }}</h3>
    <h3>author : {{ author }}</h3>
    <h3>title : {{ title }}</h3>
  </div>
</template>

<script>
import { reactive, toRef } from 'vue';

export default {
  setup () {
    const book    = reactive({
      author      : 'Vue3',
      year        : '2024',
      title       : 'Vue3 Basic',
      description : 'The BESTSELLER of 2024',
      price       : '22,000'
    })

    const author  = toRef(book, 'author')
    const title   = toRef(book, 'title')

    return {
      book,
      author,
      title
    }
  }
}
</script>

<style lang="scss" scoped>

</style>