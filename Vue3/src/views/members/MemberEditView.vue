<template>
  <div>
    <h2>Member Modify</h2>
    <hr class="my-4" />
    <MemberForm v-model:sal="form.sal" v-model:name="form.name" @submit.prevent="memberUpdate">
      <template #actions>
        <button type="button" class="btn btn-outline-danger" @click="goDetailPage">Cancel</button>
        <button class="btn btn-primary">Modify</button>
      </template>
    </MemberForm>
  </div>
</template>

<script setup>
import { getMemberById, updateMember } from '@/api/members'
import MemberForm from '@/components/members/MemberForm.vue'
import { ref } from 'vue'
import { useRoute, useRouter } from 'vue-router'

const route = useRoute()
const router = useRouter()

const id = parseInt(route.params.id)
const form = ref({
  sal: null,
  name: null
})

const fetchMember = async () => {
  const { data } = await getMemberById(id)
  console.log('MemberEditValue id -> ', id)
  console.log('MemberEditValue data -> ', data)

  setForm(data)
}

const setForm = ({ sal, name }) => {
  form.value.sal = parseInt(sal)
  form.value.name = name
}

fetchMember()

const memberUpdate = async () => {
  try {
    console.log('MemberEditValue memberUpdate form.value -> ', form.value)
    const { data } = await updateMember(id, { ...form.value })
    console.log('MemberEditValue memberUpdate data -> ', data)
    router.push({ name: 'MemberDetail', params: { id } })
  } catch (error) {
    console.error(error)
  }
}

const goDetailPage = () => router.push({ name: 'MemberDetail', params: { id } })
</script>

<style lang="scss" scoped></style>
