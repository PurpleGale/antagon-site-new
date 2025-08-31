const { generateSitemap } = require('sitemap-ts');

const SITEMAP_CONFIG = {
  hostname: 'https://wiki.antagon.su/',
  outDir: 'docs/.vitepress/dist',
  extensions: ['html'],
  exclude: [
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
