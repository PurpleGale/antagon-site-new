const { generateSitemap } = require('sitemap-ts');

// Настройки для исключения путей
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

async function generateSiteMap() {
  await generateSitemap(SITEMAP_CONFIG);
}

module.exports = { generateSiteMap, SITEMAP_CONFIG };
