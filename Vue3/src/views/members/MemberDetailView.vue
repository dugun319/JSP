<template>
  <div>
    <h1>Car Detail View</h1>
    <h2>{{ member.name }}</h2>
    <h2>{{ member.sal }}</h2>
    <hr class="my-4" />
    <p>params: {{ $route.params }}</p>
    <!-- <p>query: {{ $route.query }}</p>
    <p>hash: {{ $route.hash }}</p> -->
    <hr class="my-4" />
    <div class="row g-2">
      <div class="col-auto">
        <button class="btn btn-outline-dark">PrevPage</button>
      </div>
      <div class="col-auto">
        <button class="btn btn-outline-dark">NextPage</button>
      </div>
      <div class="col-auto me-auto"></div>
      <div class="col-auto">
        <button class="btn btn-outline-dark" @click="goListPage">List</button>
      </div>
      <div class="col-auto">
        <button class="btn btn-outline-primary" @click="goMemberUpdatePage">Modify</button>
      </div>
      <div class="col-auto">
        <button class="btn btn-outline-danger" @click="remove">DELETE</button>
      </div>
    </div>
  </div>
</template>

<script setup>
import router from '@/router'
import { deleteMember, getMemberById } from '@/api/members'
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

const goListPage = () => router.push({ name: 'MemberList' })

const goMemberUpdatePage = () =>
  router.push({
    name: 'MemberEdit',
    params: { id: props.id }
  })

const remove = () => {
  try {
    console.log('remove = () => is called and save is started')
    deleteMember(props.id)
    setTimeout(3000).then(
      router.push({
        name: 'MemberList'
      })
    )
  } catch (error) {
    console.error(error)
  }
}
</script>

<style lang="scss" scoped></style>
