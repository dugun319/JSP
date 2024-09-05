<template>
  <div>
    <h2>차량 등록</h2>
    <hr class="my-4" />
    <!-- submit.prevent => fomr의 기본적인 동작은 value를 서버로 전송
      전송과 동시에 화면의 데이터가 리셋되데, .prevent 는 
      이러한 기본동작을 제어함  -->
    <MemberForm v-model:sal="form.sal" v-model:name="form.name" @submit.prevent="save">
      <template #actions>
        <button type="button" class="btn btn-outline-primary me-2" @click="goListPage">LIST</button>
        <button class="btn btn-outline-secondary">SAVE</button>
      </template>
    </MemberForm>
  </div>
</template>

<script setup>
import { createMember } from '@/api/members'
import MemberForm from '@/components/members/MemberForm.vue'
import router from '@/router'

import { ref } from 'vue'

const form = ref({
  sal: null,
  name: null
})

const goListPage = () =>
  router.push({
    name: 'MemberList'
  })

const save = () => {
  try {
    console.log('save = () => is called and save is started')
    createMember({
      ...form.value
      // form.sal,
      // form.name
    })
    router.push({
      name: 'MemberList'
    })
  } catch (error) {
    console.error(error)
  }
}
</script>

<style lang="scss" scoped></style>
