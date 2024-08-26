<template>
  <div>

  </div>
</template>

<script>
import { reactive, readonly } from 'vue';

export default {
  setup () {
    const original  = reactive({
      count : 0
    })

    const copy      = readonly(original)
    original.count++

    console.log('original -> ', original.count)
    console.log('copy -> ', copy.count)

    return {
      original,
      copy
    }
  }
}
</script>

<style lang="scss" scoped>

</style>