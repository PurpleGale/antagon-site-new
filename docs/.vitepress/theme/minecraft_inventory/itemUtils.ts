export const getItemTitle = (itemName: string): string => {
  if (!itemName) return ''
  return itemName.split('_').map(word => word.charAt(0).toUpperCase() + word.slice(1)).join(' ')
}

export const getItemAlt = (itemName: string): string => {
  if (!itemName) return ''
  const title = getItemTitle(itemName)
  return `Иконка ${title}.png: Спрайт для инвентаря, как показано в игре.`
}

export const getItemSrc = (itemName: string): string => {
  if (!itemName) return ''
  return `/assets/items/${itemName}.png`
}
