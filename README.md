# Re:Antagon - Документация

[![Discord](https://img.shields.io/discord/1285588070497910896?color=7289da&label=Discord&logo=discord&logoColor=white)](https://discord.gg/9hEPDZD24A)

Этот репозиторий содержит документацию для Minecraft сервера Re:Antagon. Сайт построен с использованием [VitePress](https://vitepress.dev/).

## 🚀 Локальная разработка

```bash
# Установка репозитория
git clone https://github.com/PurpleGale/antagon-site-new.git
# или
gh repo clone PurpleGale/antagon-site-new

# Установка зависимостей
npm install

# Запуск сервера разработки
npm run docs:dev
```

## 📁 Структура проекта

- `docs/` - Основная директория с документацией
  - `.vitepress/` - Стандартные файлы конфигурации VitePress 
  - `guide/` - Руководства по игре
  - `images/` - Изображения и медиафайлы (стандартные для Майнкрафта и Кастомные)

## 🔍 SEO оптимизация

### ✅ Выполненные улучшения

- **robots.txt и sitemap.xml** - Автоматическая генерация при сборке
- **Open Graph и Twitter Card** - Мета-теги для социальных сетей
- **JSON-LD разметка** - Структурированные данные для поисковиков
- **Базовые мета-теги** - robots, author, keywords, canonical
- **Аналитика** - Google Analytics 4 и Yandex Metrica (нуждается в настройке)

### 📋 Следующие шаги

#### 1. Настройка аналитики
```bash
# Замените плейсхолдеры в docs/.vitepress/theme/index.ts:
# GA_MEASUREMENT_ID - на ваш Google Analytics ID
# YM_COUNTER_ID - на ваш Yandex Metrica ID
```

#### 2. Регистрация в поисковых системах
- **Google Search Console**: https://search.google.com/search-console
- **Yandex Webmaster**: https://webmaster.yandex.ru/

#### 3. Оптимизация контента
- Добавьте уникальные мета-описания для каждой страницы
- Используйте правильную структуру заголовков (H1-H6)
- Добавьте alt-теги ко всем изображениям
- Создайте внутренние ссылки между страницами

#### 4. Оптимизация производительности
```bash
# Установите дополнительные плагины
npm install --save-dev vite-plugin-pwa @vite-pwa/vitepress
```

#### 5. Мониторинг и анализ
- Проверяйте индексацию в Search Console
- Анализируйте трафик в Google Analytics
- Мониторьте позиции в поиске

### 🛠 Сборка для продакшена

```bash
# Сборка сайта
npm run docs:build

# Превью сборки
npm run docs:preview
```

После сборки файлы `robots.txt` и `sitemap.xml` будут автоматически созданы в папке `docs/.vitepress/dist/`.

## 🤝 Как внести свой вклад

1. Форкните репозиторий
2. Создайте ветку для ваших изменений
3. Внесите изменения
4. Создайте Pull Request

## 📝 Лицензия

[MIT](LICENSE)
