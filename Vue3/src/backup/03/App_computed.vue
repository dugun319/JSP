<template>
  <div>
    <h2>NAME : {{ teacher.name }}</h2>
    <h2>Lecture : {{ teacher.lecture[0] }}</h2>
    <p>{{ hasLecture }}</p>
    <p>{{ hasLecture }}</p>
    <p>{{ existLecture() }}</p>
    <p>{{ existLecture() }}</p>
    <button v-on:click="counter++">counter : {{ counter }}</button>
    <h2>NAME</h2>
    <p>{{ fullName }}</p>
    <p>{{ firstName }}</p>
    <p>{{ lastName }}</p>
  </div>
</template>

<script>
import { computed, reactive, ref } from 'vue';

export default {
  setup () {
    const teacher = reactive({
      name : 'KTG',
      lecture : ['HTML', 'JSP', 'SPRING', 'VUE']
    })

    const hasLecture = computed(()=> {
      console.log('computed')
      return teacher.lecture.length > 0 ? 'YES' : 'NO'
    })

    const existLecture = ()=> {
      console.log('method')
      return teacher.lecture.length > 0 ? 'YES' : 'NO'

    }

    const counter   = ref(0)
    const firstName = ref('Hong')
    const lastName  = ref('GilDong')

    const fullName  = computed({
      get(){
        return firstName.value + ' ' + lastName.value
      },
      
      set(value){
        [firstName.value, lastName.value] = value.split(' ')
      }
      
    })

    fullName.value = 'H GD'

    return {
      teacher,
      hasLecture,
      existLecture,
      counter,
      firstName,
      lastName,
      fullName
    }
  }
}
</script>

<style lang="scss" scoped>

</style>