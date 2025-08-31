import DefaultTheme from 'vitepress/theme'
import { onMounted } from 'vue'

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    // Add analytics scripts only on client side
    if (typeof window !== 'undefined') {
      onMounted(() => {
        // Google Analytics 4
        const gtagScript = document.createElement('script')
        gtagScript.async = true
        gtagScript.src = 'https://www.googletagmanager.com/gtag/js?id=G-P7LSNPZV1S'
        document.head.appendChild(gtagScript)

        const gtagConfig = document.createElement('script')
        gtagConfig.innerHTML = `
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'G-P7LSNPZV1S');
        `
        document.head.appendChild(gtagConfig)

        // Yandex Metrica
        const ymScript = document.createElement('script')
        ymScript.innerHTML = `
          (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
          m[i].l=1*new Date();
          for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
          k=e.createElement(t),a=e.scripts[0];k.async=1;k.src=r;a.parentNode.insertBefore(k,a)})
          (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

          ym(103960154, "init", {
            clickmap:true,
            trackLinks:true,
            accurateTrackBounce:true,
            webvisor:true
          });
        `
        document.head.appendChild(ymScript)

        const ymNoscript = document.createElement('noscript')
        const ymImg = document.createElement('div')
        ymImg.innerHTML = '<img src="https://mc.yandex.ru/watch/103960154" style="position:absolute; left:-9999px;" alt="" />'
        ymNoscript.appendChild(ymImg)
        document.body.appendChild(ymNoscript)
      })
    }
  }
}
