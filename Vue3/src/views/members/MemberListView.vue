<template>
  <div>
    <h2>Member List</h2>
    <hr />
    <div class="row g-30">
      <div v-for="member in members" :key="member.id" class="col-3">
        <MemberItem
          :id="member.id"
          :name="member.name"
          :sal="member.sal"
          @click="goMemberDetail(member.id)"
        >
        </MemberItem>
      </div>
    </div>
    <AppCard>
      <MemberDetailView :id="1"></MemberDetailView>
    </AppCard>
  </div>
</template>

<script setup>
import { getMembers } from '@/api/members'
import AppCard from '@/components/AppCard.vue'
import MemberItem from '@/components/members/MemberItem.vue'
import router from '@/router'
import { ref } from 'vue'
import MemberDetailView from './MemberDetailView.vue'
// import { useRouter } from 'vue-router';

// const router = useRouter()
const members = ref([])

const fetchMembers = async () => {
  try {
    const { data } = await getMembers()
    members.value = data
    // totalCount.value = header['x-total-count']
    console.log('members.value -> ', members.value)
  } catch (error) {
    console.error(error)
  }
}

fetchMembers()

const goMemberDetail = (id) => {
  // router.push('/posts/' + id)
  console.log('MemberListView goMemberDetail id -> ', id)
  console.log('MemberListView goMemberDetail type of id -> ', typeof id)

  router.push({
    name: 'MemberDetail',
    params: {
      id: id
    }
  })
}
</script>

<style lang="scss" scoped></style>
