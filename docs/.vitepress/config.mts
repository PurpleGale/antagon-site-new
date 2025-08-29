import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Re:Antagon",
  description: "Антагон - это ванильный майнкрафт сервер для 1.21 версий майнкрафта. На сервере добавлены кастомные предметы, мобы.",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Главная', link: '/' },
      { text: 'Правила', link: '/rules' },
      { text: 'Вики', link: '/guide/faq/' }
    ],
    
    footer: {
      message: 'Antagon вики распространяется в формате "как есть" и не обязана содержать актуальную информацию.',
      copyright: 'Copyright © 2021-2025 Re:Antagon'
    },

    sidebar: [
      {
        text: 'Начало игры',
        items: [
          { text: 'Начало игры', link: '/guide/start' },
          { text: 'Наша команда', link: '/guide/team' }
        ]
      },
      {
        text: 'Часто задаваемые вопросы',
        items: [
          { text: 'Общие вопросы', link: '/guide/faq/' },
          { text: 'Экономика', link: '/guide/faq/economy' }
        ]
      },
      {
        text: 'Предметы',
        items: [
          { text: 'Обзор предметов', link: '/guide/items/' },
          { text: 'Кастомные мечи', link: '/guide/items/swords' },
          { text: 'Ядовитый меч', link: '/guide/items/poison_sword' }
        ]
      },
      {
        text: 'Механики',
        items: [
          { text: 'Обзор механик', link: '/guide/mechanics/' },
          { text: 'Система приватов', link: '/guide/mechanics/protect' }
        ]
      },
      {
        text: 'Места',
        items: [
          { text: 'Места', link: '/guide/places/' }
        ]
      }
    ],

    socialLinks: [
      { icon: 'discord', link: 'https://discord.gg/4tGwATJt' }
    ],

    search: {
      provider: 'local',
      options: {
        locales: {
          root: {
            translations: {
              button: {
                buttonText: 'Поиск',
                buttonAriaLabel: 'Поиск'
              },
              modal: {
                displayDetails: 'Показать подробности',
                resetButtonTitle: 'Сбросить поиск',
                backButtonTitle: 'Закрыть поиск',
                noResultsText: 'Нет результатов',
                footer: {
                  selectText: 'Выбрать',
                  selectKeyAriaLabel: 'Ввод',
                  navigateText: 'Навигация',
                  navigateUpKeyAriaLabel: 'Стрелка вверх',
                  navigateDownKeyAriaLabel: 'Стрелка вниз',
                  closeText: 'Закрыть',
                  closeKeyAriaLabel: 'Escape'
                }
              }
            }
          }
        }
      }
    }
  },

  markdown: {
    container: {
      tipLabel: 'Совет',
      warningLabel: 'Внимание',
      dangerLabel: 'Осторожно',
      infoLabel: 'Информация',
      detailsLabel: 'Подробнее'
    },
    image: {
      lazyLoading: true
    }
  }
})
