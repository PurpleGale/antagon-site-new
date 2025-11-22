<template>
  <div>
    <span class="mcui mcui-Stonecutter pixel-image">
      <span class="mcui-input">
        <InventorySlot :item="input" :count="inputCount" />
      </span>
      <span class="mcui-arrow">
        <br>
      </span>
      <span class="mcui-output">
        <InventorySlot :item="output" :count="outputCount" />
      </span>
    </span>
  </div>
</template>

<script setup lang="ts">
import InventorySlot from './minecraft_inventory/InventorySlot.vue'

interface Props {
  input: string
  inputCount?: number
  output: string
  outputCount?: number
}

const props = withDefaults(defineProps<Props>(), {
  inputCount: 1,
  outputCount: 1
})
</script>
