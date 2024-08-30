<template>
    <AppCard>
        <h5 class="card-title">{{ id }}</h5>
        <p class="card-text">{{ name }}</p>
        <p class="text-muted">{{ sal }}</p>
    </AppCard>
</template>



<script setup>
import AppCard from '@/components/AppCard.vue'

defineProps({
    id: {
        type: Number,
        required: true
    },

    name: {
        type: String
    },

    sal: {
        type: [String, Number]
    }
})
</script>

<style lang="scss" scoped>

</style>