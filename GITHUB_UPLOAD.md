# Выгрузка на GitHub

1. Распакуйте архив. Внутри папки Rostok должны лежать README.md и dist.
2. На GitHub создайте пустой репозиторий. Для команд ниже не добавляйте README автоматически.
3. Откройте терминал в папке Rostok и выполните:

```sh
git init
git add .
git commit -m "Release Rostok MVP 1.1"
git branch -M main
git remote add origin https://github.com/YOUR_LOGIN/YOUR_REPO.git
git push -u origin main
```

Замените YOUR_LOGIN и YOUR_REPO. GitHub запросит вход. Пароли и токены не вставляйте в файлы проекта.

## Публикация сайта

В репозитории откройте Settings → Pages → Source: GitHub Actions. Затем Actions → Deploy static site → Run workflow. Готовая ссылка появится в Pages и в результате workflow. Доступность Pages зависит от тарифа и видимости репозитория. Для публичного сайта пользователям доступен интерфейс, но локальные данные каждого браузера не публикуются автоматически.

Первый запуск ИИ требует современного браузера с WebGPU и скачивания весов. Для публичного сайта обязателен HTTPS. На localhost WebGPU также может работать. Другие функции доступны без модели.

## Локально

```sh
python -m http.server 8000 --bind 127.0.0.1 --directory dist
```

Откройте http://localhost:8000. Windows: можно выполнить start.ps1. macOS/Linux: sh start.sh. Остановка: Ctrl+C.

## Docker

```sh
docker compose up --build -d
```

Откройте http://localhost:8000. Остановка: docker compose down. Docker Desktop должен быть запущен. Образ скачивается при первой сборке.

## Проверка

Node.js 22+: npm test. Установка пакетов для этих тестов и запуска сайта не нужна. npm ci требуется только при обновлении runtime-зависимости. Образы Docker и сам workflow в среде подготовки не запускались. 35 тестов приложения пройдены.

## Лицензия

Собственная лицензия ещё не выбрана владельцем. Публичный репозиторий сам по себе не даёт разрешение на свободное использование. Перед open-source релизом выберите лицензию и добавьте LICENSE. Условия сторонних компонентов: docs/THIRD_PARTY.md.
