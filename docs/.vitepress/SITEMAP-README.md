# Автоматическая генерация Sitemap

Этот проект использует библиотеку `sitemap-ts` для автоматической генерации файла sitemap.xml и robots.txt.

## Как это работает

1. При сборке сайта (`npm run docs:build`) автоматически запускается генерация sitemap
2. Библиотека сканирует директорию `docs/.vitepress/dist` и находит все HTML файлы
3. На основе найденных файлов создается sitemap.xml и robots.txt

## Настройка исключений

Чтобы исключить определенные пути из sitemap, отредактируйте файл `docs/.vitepress/generate-sitemap.js`:

```javascript
const SITEMAP_CONFIG = {
  hostname: 'https://wiki.antagon.su/',
  outDir: 'docs/.vitepress/dist',
  extensions: ['html'],
  exclude: [
    // Добавьте сюда пути, которые нужно исключить
    // '/admin',
    // '/private',
    // '/temp'
  ],
  generateRobotsTxt: true,
  robots: [
    {
      userAgent: '*',
      allow: '/'
    }
  ]
};
```

## Ручная генерация

Для ручной генерации sitemap используйте команду:

```bash
npm run generate:sitemap
```

## Файлы

- `generate-sitemap.js` - конфигурация и функция генерации sitemap
- `sitemap.xml` - автоматически генерируемый файл sitemap (после сборки)
- `robots.txt` - автоматически генерируемый файл robots.txt (после сборки)
