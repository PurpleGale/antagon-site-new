<template>
  <div>
    <span class="mcui mcui-Blast_Furnace pixel-image">
      <span class="mcui-input">
        <InventorySlot :item="input" :count="inputCount" />
      </span>
      <span class="mcui-fuel">
        <InventorySlot :item="fuel" :count="fuelCount" />
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
  input?: string
  inputCount?: number
  fuel?: string
  fuelCount?: number
  output: string
  outputCount?: number
  experience?: number
}

const props = withDefaults(defineProps<Props>(), {
  input: '',
  inputCount: 1,
  fuel: 'coal',
  fuelCount: 1,
  outputCount: 1,
  experience: 0
})
</script>
