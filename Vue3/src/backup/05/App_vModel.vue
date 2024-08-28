<template>
  <div>
    <h2>Input Value</h2>
    <input type="text" v-model.trim="inputValue" />
    <div>{{ inputValue }}</div>
    <div>{{ typeof inputValue }}</div>
    <hr><hr><hr>
    <textarea v-model="textareaValue"></textarea>
    <div>{{ textareaValue }}</div>
    <hr><hr><hr>
    <h2>Checkbox Value</h2>
    <label for="chechbox">{{ chechboxValue }}</label>
    <input  type="checkbox" 
            id="checkbox" 
            v-model="chechboxValue" 
            true-value="Good" 
            false-value="Bad" />
    <hr><hr><hr>
    
    <h2>Checkbox Values</h2>
    <label>
      <input type="checkbox" value="html" v-model="chechboxValues"/>
      HTML
    </label>
    <label>
      <input type="checkbox" value="jsp" v-model="chechboxValues"/>
      JSP
    </label>
    <label>
      <input type="checkbox" value="javaScpript" v-model="chechboxValues"/>
      JavaScpript
    </label>
    <div>{{ chechboxValues }}</div>
    <hr><hr><hr>

    <h2>Radio Values</h2>
    <label>
      <input type="radio" name="type" value="AB" v-model="radioValue"/>
      BloodType AB
    </label>
    <label>
      <input type="radio" name="type" value="A" v-model="radioValue"/>
      BloodType A
    </label>
    <label>
      <input type="radio" name="type" value="B" v-model="radioValue"/>
      BloodType B
    </label>
    <label>
      <input type="radio" name="type" value="O" v-model="radioValue"/>
      BloodType O
    </label>
    <div>{{ radioValue }}</div>

    <hr><hr><hr>

    <h2>Selective Values</h2>
    <select v-model="selectiveValue">
      <option value="html">HTML</option>
      <option value="spring">SPRING</option>
      <option value="jsp">JSP</option>
      <option value="javaScript">JavaScript</option>
      <option value="java">JAVA</option>      
    </select>
    <div>{{ selectiveValue }}</div>
  </div>
</template>

<script>
import { ref } from 'vue';

export default {
  setup () {
    const inputValue      = ref("")
    const textareaValue   = ref('')
    const chechboxValue   = ref('???')
    const chechboxValues  = ref([])
    const radioValue      = ref('')
    const selectiveValue  = ref('html')

    return {
      inputValue,
      textareaValue,
      chechboxValue,
      chechboxValues,
      radioValue,
      selectiveValue
    }
  }
}
</script>

<style lang="scss" scoped>

</style>