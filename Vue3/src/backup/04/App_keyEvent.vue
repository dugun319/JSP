<template>
  <div id="modifiers">
    <div @click="clickDiv">
      <h5>DIV Area</h5>
      <p @click="clickP">P Area
        <span @click="clickSpan">SPAN area</span>
        <a href="https://naver.com" @click.prevent.stop="clickA">A Area</a>
      </p>
    </div>
    <button @click.once="clickDiv">ONCE</button>
  </div>
</template>

<script>
export default {
  setup () {
    const clickDiv = ()=> {
      console.log("Press clickDiv")
    }

    const clickP = ()=> {
      console.log("Press clickP")
    }

    const clickSpan = ()=> {
      console.log("Press clickSpan")
    }

    const clickA = ()=> {
      alert("Press clickA, start A function")
    }

    return {
      clickDiv,
      clickP,
      clickSpan,
      clickA
    }
  }
}
</script>

<style lang="scss" scoped>
#modifiers div,
#modifiers p,
#modifiers span {
  padding: 40px;
}
#modifiers div {
  background-color: #ccc;
}
#modifiers p {
  background-color: #999;
}
#modifiers span {
  background-color: #666;
  display: block;
}
</style>