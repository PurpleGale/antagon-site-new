import type { Theme } from 'vitepress'
import DefaultTheme from 'vitepress/theme'
import CraftingRecipe from './CraftingRecipe.vue'
import FurnaceRecipe from './FurnaceRecipe.vue'
import BrewingRecipe from './BrewingRecipe.vue'
import StonecuttingRecipe from './StonecuttingRecipe.vue'
import SmeltingRecipe from './SmeltingRecipe.vue'

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    if (typeof window !== 'undefined') {
      document.addEventListener('selectionchange', applySelectionColorsStyle)
    }
    app.component('CraftingRecipe', CraftingRecipe)
    app.component('FurnaceRecipe', FurnaceRecipe)
    app.component('BrewingRecipe', BrewingRecipe)
    app.component('StonecuttingRecipe', StonecuttingRecipe)
    app.component('SmeltingRecipe', SmeltingRecipe)
  }
} satisfies Theme

function applySelectionColorsStyle() {
  const selection = window.getSelection()
  if (!selection || selection.toString().trim() === '') {
    return
  }
  let styleElement = document.getElementById('selection-style')
  if (!styleElement) {
    styleElement = document.createElement('style')
    styleElement.id = 'selection-style'
    document.head.appendChild(styleElement)
  }
  
  styleElement.textContent = `
::selection {
  color: var(--vp-c-neutral-inverse) !important;
  background-color: var(--vp-c-neutral) !important;
}
::-moz-selection {
  color: var(--vp-c-neutral-inverse) !important;
  background-color: var(--vp-c-neutral) !important;
}`
}
