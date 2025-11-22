<template>
  <div>
    <span class="mcui mcui-Crafting_Table pixel-image">
      <span class="mcui-input">
        <span class="mcui-row">
          <span class="invslot">
            <span v-if="input1" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input1)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input1)" 
                  :src="getItemSrc(input1)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
          <span class="invslot">
            <span v-if="input2" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input2)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input2)" 
                  :src="getItemSrc(input2)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
          <span class="invslot">
            <span v-if="input3" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input3)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input3)" 
                  :src="getItemSrc(input3)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
        </span>
        <span class="mcui-row">
          <span class="invslot">
            <span v-if="input4" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input4)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input4)" 
                  :src="getItemSrc(input4)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
          <span class="invslot">
            <span v-if="input5" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input5)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input5)" 
                  :src="getItemSrc(input5)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
          <span class="invslot">
            <span v-if="input6" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input6)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input6)" 
                  :src="getItemSrc(input6)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
        </span>
        <span class="mcui-row">
          <span class="invslot">
            <span v-if="input7" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input7)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input7)" 
                  :src="getItemSrc(input7)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
          <span class="invslot">
            <span v-if="input8" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input8)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input8)" 
                  :src="getItemSrc(input8)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
          <span class="invslot">
            <span v-if="input9" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(input9)">
              <span typeof="mw:File">
                <img 
                  :alt="getItemAlt(input9)" 
                  :src="getItemSrc(input9)" 
                  decoding="async" 
                  loading="lazy" 
                  width="32" 
                  height="32" 
                  class="mw-file-element" 
                  data-file-width="16" 
                  data-file-height="16"
                >
              </span>
            </span>
          </span>
        </span>
      </span>
      <span class="mcui-arrow">
        <br>
      </span>
      <span class="mcui-output">
        <span class="invslot invslot-large">
          <span v-if="output" class="invslot-item invslot-item-image" :data-minetip-title="getItemTitle(output)">
            <span typeof="mw:File">
              <img 
                :alt="getItemAlt(output)" 
                :src="getItemSrc(output)" 
                decoding="async" 
                loading="lazy" 
                width="32" 
                height="32" 
                class="mw-file-element" 
                data-file-width="16" 
                data-file-height="16"
              >
            </span>
            <span v-if="output_count && output_count > 1" class="invslot-stacksize">{{ output_count }}</span>
          </span>
        </span>
      </span>
      <span v-if="shapeless || fixed" class="mcui-icons">
        <span 
          v-if="shapeless" 
          class="mcui-shapeless" 
          title="This recipe is shapeless; the inputs may be placed in any arrangement in the crafting grid."
        >
          <br>
        </span>
        <span 
          v-if="fixed" 
          class="mcui-fixed" 
          title="This recipe has a fixed arrangement; the inputs must be placed in specific positions."
        >
          <br>
        </span>
      </span>
    </span>
  </div>
</template>

<script setup>
const props = defineProps({
  input1: String,
  input2: String,
  input3: String,
  input4: String,
  input5: String,
  input6: String,
  input7: String,
  input8: String,
  input9: String,
  output: {
    type: String,
    required: true
  },
  output_count: {
    type: Number,
    default: 1
  },
  shapeless: {
    type: Boolean,
    default: false
  },
  fixed: {
    type: Boolean,
    default: false
  }
})

const getItemTitle = (itemName) => {
  if (!itemName) return ''
  return itemName.split('_').map(word => word.charAt(0).toUpperCase() + word.slice(1)).join(' ')
}

const getItemAlt = (itemName) => {
  if (!itemName) return ''
  const title = getItemTitle(itemName)
  return `Иконка ${title}.png: Спрайт для инвентаря, как показано в игре.`
}

const getItemSrc = (itemName) => {
  if (!itemName) return ''
  return `/assets/items/${itemName}.png`
}
</script>