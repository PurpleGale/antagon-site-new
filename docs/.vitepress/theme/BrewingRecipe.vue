<template>
  <div>
    <span class="mcui mcui-Brewing_Stand pixel-image">
      <span class="mcui-brewing-input">
        <InventorySlot :item="ingredient" :count="ingredientCount" />
      </span>
      <span class="mcui-brewing-fuel">
        <InventorySlot item="blaze_powder" />
      </span>
      <span class="mcui-brewing-output">
        <span class="mcui-row">
          <InventorySlot :item="base1" />
          <InventorySlot :item="base2" />
          <InventorySlot :item="base3" />
        </span>
        <span class="mcui-row">
          <InventorySlot :item="output1" />
          <InventorySlot :item="output2" />
          <InventorySlot :item="output3" />
        </span>
      </span>
    </span>
  </div>
</template>

<script setup lang="ts">
import InventorySlot from './minecraft_inventory/InventorySlot.vue'

interface Props {
  ingredient: string
  ingredientCount?: number
  base1?: string
  base2?: string
  base3?: string
  output1: string
  output2?: string
  output3?: string
  showvariants?: boolean
}

const props = withDefaults(defineProps<Props>(), {
  ingredientCount: 1,
  base1: 'potion',
  base2: 'splash_potion',
  base3: 'lingering_potion',
  output2: '',
  output3: ''
})
</script>
