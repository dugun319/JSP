<template>
  <form>
    <div class="mb-3">
      <label for="sal" class="form-label">금액</label>
      <input
        :type="text"
        :value="sal"
        @input="$emit('update:sal', $event.target.value)"
        class="form-control"
        id="sal"
      />
    </div>

    <div class="mb-3">
      <label for="name" class="form-label">NAME</label>
      <textarea
        :value="name"
        @input="$emit('update:name', $event.target.value)"
        class="form-control"
        id="name"
        rows="1"
      >
      </textarea>
      <div class="d-flex gap-2 mt-4">
        <slot name="actions"></slot>
      </div>
    </div>
  </form>
</template>

<script setup>
defineProps({
  sal: String,
  name: String
})

defineEmits(['update:sal', 'update:name'])
</script>

<style lang="scss" scoped></style>
