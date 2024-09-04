<template>
  <div>
    <h1>Car Detail View</h1>
    <h2>{{ member.name }}</h2>
    <h2>{{ member.sal }}</h2>
    <hr class="my-4" />
    <p>params: {{ $route.params }}</p>
    <p>query: {{ $route.query }}</p>
    <p>hash: {{ $route.hash }}</p>
  </div>
</template>

<script setup>
// import router from '@/router'
import { getMemberById } from '@/api/members'
import { ref } from 'vue'

// import { useRouter } from 'vue-router'
const props = defineProps({
  id: String
})
// const route = useRouter()

const member = ref({
  name: null,
  sal: null
})

const fetchMembers = async () => {
  console.log('MemberDetailView 1. memberPostValue props.id -> ', props.id)
  // catch error
  const { data } = await getMemberById(props.id)

  console.log('MemberDetailView 2. memberDetailValue props.id -> ', props.id)
  console.log('MemberDetailView 2. memberDetailValue props.id -> ', props.id)

  SetMember(data)
}

const SetMember = ({ name, sal }) => {
  member.value.name = name
  member.value.sal = sal
}

fetchMembers()

// const goListPage = () => router.push({ name: 'MemberList' })
</script>

<style lang="scss" scoped></style>
