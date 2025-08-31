import { defineConfig } from 'vitepress'
import { generateSiteMap } from './generate-sitemap'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  lang: 'ru-RU',
  title: "Re:Antagon",
  titleTemplate: ':title | Re:Antagon',
  description: "Антагон - это ванильный майнкрафт сервер для 1.21 версий майнкрафта. На сервере добавлены кастомные предметы, мобы.",
  head: [
    ['link', { rel: 'icon', type: "image/x-icon", href: '/favicon.ico' }],
    ['link', { rel: 'shortcut icon', type: "image/x-icon", href: '/favicon.ico' }],
    // Open Graph / Facebook
    ['meta', { property: 'og:type', content: 'website' }],
    ['meta', { property: 'og:url', content: 'https://wiki.antagon.su/' }],
    ['meta', { property: 'og:title', content: 'Re:Antagon - Minecraft Server Wiki' }],
    ['meta', { property: 'og:description', content: 'Антагон - это ванильный майнкрафт сервер для 1.21 версий майнкрафта. На сервере добавлены кастомные предметы, мобы.' }],
    ['meta', { property: 'og:image', content: 'https://wiki.antagon.su/logo.png' }],
    // Twitter
    ['meta', { property: 'twitter:card', content: 'summary_large_image' }],
    ['meta', { property: 'twitter:url', content: 'https://wiki.antagon.su/' }],
    ['meta', { property: 'twitter:title', content: 'Re:Antagon - Minecraft Server Wiki' }],
    ['meta', { property: 'twitter:description', content: 'Антагон - это ванильный майнкрафт сервер для 1.21 версий майнкрафта. На сервере добавлены кастомные предметы, мобы.' }],
    ['meta', { property: 'twitter:image', content: 'https://wiki.antagon.su/logo.png' }],
    // Additional SEO
    ['meta', { name: 'robots', content: 'index, follow' }],
    ['meta', { name: 'author', content: 'Re:Antagon Team' }],
    ['meta', { name: 'keywords', content: 'minecraft, server, antagon, wiki, гайд, предметы, мобы, 1.21' }],
    ['link', { rel: 'canonical', href: 'https://wiki.antagon.su/' }],
    // JSON-LD structured data
    ['script', { type: 'application/ld+json' }, `{
      "@context": "https://schema.org",
      "@type": "WebSite",
      "name": "Re:Antagon",
      "description": "Антагон - это ванильный майнкрафт сервер для 1.21 версий майнкрафта. На сервере добавлены кастомные предметы, мобы.",
      "url": "https://wiki.antagon.su/",
      "publisher": {
        "@type": "Organization",
        "name": "Re:Antagon Team",
        "logo": {
          "@type": "ImageObject",
          "url": "https://wiki.antagon.su/logo.png"
        }
      },
      "potentialAction": {
        "@type": "SearchAction",
        "target": "https://wiki.antagon.su/search?q={search_term_string}",
        "query-input": "required name=search_term_string"
      }
    }`]
  ],
  cleanUrls: true,
  lastUpdated: true,

  vite: {
    plugins: []
  },

  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    logo: './assets/logo.png',

    nav: [
      { text: 'Главная', link: '/' },
      { text: 'Правила', link: '/rules' },
      { text: 'Вики', link: '/guide/faq/' },
      { text: 'Боги', link: '/gods/' }
    ],
    
    footer: {
      message: 'Antagon вики распространяется в формате "как есть" и не обязана содержать актуальную информацию.',
      copyright: 'Copyright © 2021-2025 Re:Antagon'
    },

    docFooter: {
      prev: 'Предыдущая',
      next: 'Далее'
    },

    lightModeSwitchTitle: 'Переключить на светлую тему',
    darkModeSwitchTitle: 'Переключить на тёмную тему',
    outlineTitle: 'На этой странице',
    returnToTopLabel: 'Вернуться к началу',
    langMenuLabel: 'Выбрать язык',
    skipToContentLabel: 'Перейти к содержимому',
    editLink: {
      pattern: 'https://github.com/purplegale/antagon-site-new/edit/main/docs/:path',
      text: 'Редактирование страницы на GitHub'
    },
    externalLinkIcon: true,

    sidebar: {
      guide: [
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
      gods: [
        {
          text: 'Боги',
          items: [
            { text: 'Война', link: '/gods/1_war' },
            { text: 'Механизмы', link: '/gods/2_machinery' },
            { text: 'Звёзды', link: '/gods/3_stars' },
            { text: 'Знание', link: '/gods/4_knowledge' },
            { text: 'Жизнь', link: '/gods/5_life' },
            { text: 'Развитие', link: '/gods/6_growth' },
            { text: 'Чистилище', link: '/gods/7_purgatory' },
            { text: 'Океан', link: '/gods/8_ocean' },
            { text: 'Пустота', link: '/gods/9_void' },
            { text: 'Кровь', link: '/gods/10_blood' },
            { text: 'Смерть', link: '/gods/11_death' },
            { text: 'Хаос', link: '/gods/12_chaos' }
          ]
        }
      ]
    },

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
    },

    lastUpdated: {
      text: 'Дата последнего обновления',
      formatOptions: {
        dateStyle: 'short',
        timeStyle: 'short'
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
