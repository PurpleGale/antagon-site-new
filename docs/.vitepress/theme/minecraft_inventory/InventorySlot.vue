<template>
  <span class="invslot">
    <span 
      v-if="item" 
      class="invslot-item invslot-item-image" 
      :data-minetip-title="getItemTitle(item)"
    >
      <span typeof="mw:File">
        <img 
          :alt="getItemAlt(item)" 
          :src="getItemSrc(item)" 
          decoding="async" 
          loading="lazy" 
          width="32" 
          height="32" 
          class="mw-file-element" 
          data-file-width="16" 
          data-file-height="16"
        >
      </span>
      <span v-if="count && count > 1" class="invslot-stacksize">{{ count }}</span>
    </span>
  </span>
</template>

<script setup lang="ts">
import { getItemTitle, getItemAlt, getItemSrc } from './itemUtils'

interface Props {
  item?: string
  count?: number
}

const props = withDefaults(defineProps<Props>(), {
  item: '',
  count: 1
})
</script>
