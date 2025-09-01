import DefaultTheme from 'vitepress/theme'

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    if (typeof window !== 'undefined') {
      document.addEventListener('selectionchange', applySelectionColorsStyle)
    }
  }
}

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
