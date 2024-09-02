<template>
    <div>
      <h2>Nested View</h2>
      <ul class="nav nav-pills">
        <li class="nav-item">
            <RouterLink 
                class="nav-link" 
                active-class="active" 
                :to="{name: 'NestedHome', replace: true}">
                NestedHome
            </RouterLink>
        </li>
        &nbsp;&nbsp;
        <li class="nav-item">
            <RouterLink 
                class="nav-link" 
                active-class="active" 
                :to="{name: 'NestedOne', replace: true}">
                NestedOne
            </RouterLink>
        </li>
        &nbsp;&nbsp;
        <li class="nav-item">
            <RouterLink 
                class="nav-link"
                active-class="active"
                :to="{name: 'NestedTwo', replace: true}">
                NestedTwo
            </RouterLink>
        </li>
      </ul>
      <hr>
      <RouterView></RouterView>
    </div>
  </template>
  
  <script setup>

</script>
  
  <style lang="scss" scoped>

</style>