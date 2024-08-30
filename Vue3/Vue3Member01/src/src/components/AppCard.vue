<template>
    <div class="card">
        <div v-if="$slots.header" class="card-header">
            <slot name="header"></slot>
        </div>
        <div v-if="$slots.default" class="card-body">
            <slot></slot>
        </div>
        <div class="card-footer">
            <slot name="footer"></slot>
        </div>
    </div>
</template>