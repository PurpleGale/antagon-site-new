import DefaultTheme from 'vitepress/theme'

function invert(color: string): string {
  if (color.startsWith('#')) {
    const hex = color.replace('#', '')
    const r = parseInt(hex.substr(0, 2), 16)
    const g = parseInt(hex.substr(2, 2), 16)
    const b = parseInt(hex.substr(4, 2), 16)
    return `rgba(${255 - r}, ${255 - g}, ${255 - b}, 1)`
  }
  let cleanColor = color.replace('rgb(', '').replace('rgba(', '').replace(')', '')
  const parts = cleanColor.split(',').map(part => part.trim())
  const r = parseInt(parts[0])
  const g = parseInt(parts[1])
  const b = parseInt(parts[2])
  const a = parts.length > 3 ? parseFloat(parts[3]) : 1
  return `rgba(${255 - r}, ${255 - g}, ${255 - b}, ${a})`
}

function getElementColors(): { textColor: string; backgroundColor: string } | null {
  const element = document.querySelector('.VPContent')
  if (!element) return null
  
  const computedStyle = window.getComputedStyle(element)
  return {
    textColor: computedStyle.color,
    backgroundColor: computedStyle.backgroundColor
  }
}

function applyInvertedSelectionColors(): void {
  const colors = getElementColors()
  if (!colors) return
  
  const invertedTextColor = invert(colors.textColor)
  const invertedBgColor = invert(colors.backgroundColor)
  
  let styleElement = document.getElementById('inverted-selection-style')
  if (!styleElement) {
    styleElement = document.createElement('style')
    styleElement.id = 'inverted-selection-style'
    document.head.appendChild(styleElement)
  }
  
  styleElement.textContent = `
    .VPContent ::selection {
      color: ${invertedTextColor} !important;
      background-color: ${invertedBgColor} !important;
    }
    .VPContent::-moz-selection {
      color: ${invertedTextColor} !important;
      background-color: ${invertedBgColor} !important;
    }
  `
}

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    // Add analytics scripts only on client side
    if (typeof window !== 'undefined') {
      window.addEventListener('load', () => {
        setTimeout(() => {
          applyInvertedSelectionColors()
        }, 100)
      })
      
      window.addEventListener('resize', () => {
        setTimeout(() => {
          applyInvertedSelectionColors()
        }, 100)
      })
    }
  }
}
