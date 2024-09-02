<template>
    <div>
        <h2>Member List</h2>
        <hr>
        <div v-for="member in members" :key="member.id" class="col-4">
            <MemberItem
                :id="member.id"
                :name="member.name"
                :sal="member.sal"
                @click="goMemberDetail(member.id)"
            >
            </MemberItem>
        </div>
    </div>
</template>

<script setup>
import { getMembers } from '@/api/members';
import MemberItem from '@/components/members/MemberItem.vue';
import { ref } from 'vue';
// import { useRouter } from 'vue-router';

// const router = useRouter()
const members = ref([])

const fetchMembers = async ()=> {
    try{
        const{data}     = await getMembers()
        members.value   = data
        // totalCount.value = header['x-total-count']
        console.log('members.value -> ', members.value)
    } catch (error){
        console.error(error)
    }
}

fetchMembers()

</script>

<style lang="scss" scoped>

</style>