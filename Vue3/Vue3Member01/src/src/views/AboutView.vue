<template>
  <div>
    <h2>About View</h2>
    <p>{{ $route.path }}</p>
    <button type="button" class="btn btn-primary" @click="$router.path('/')">TO HOME</button>
    <br><br>
    <button type="button" class="btn btn-success">Success_Dummy</button>
  </div>
</template>

<script setup>
  import { useRouter } from 'vue-router'

  const route = useRouter()
  console.log('route.path : ', route.path)
  console.log('route : ', route)

</script>

<style lang="scss" scoped></style>
