+++
archetype = "chapter"
title = "Загальна схема процесу публікацій"
weight = 26
showInToc = true
+++

Опишемо загальну схему процесу публікацій, що використовує запропоновані
вище платформи і інструменти за допомогою стандартної MSC (Message
Sequence Chart) діаграми. Запропонований нижче процес дозволяє
організувати колективну роботу в розподіленій команді для розробки
документації, та підтримувати належний рівень її якості через процес
перегляду запитів на злиття при внесенні змін.

[<img src="/images/36-phases.png" style="width:6.88976in;height:5.91667in" />](https://mscgen.js.org/?lang=mscgen&style=lazy&msc=msc%20%7B%0A%0Aauthors%20%5Blabel%3D%22%D0%90%D0%B2%D1%82%D0%BE%D1%80%D0%B8%22%5D%2C%20gitrepo%20%5Blabel%3D%22Git%20%D0%A0%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D1%96%D0%B9%22%5D%2C%20github%20%5Blabel%3D%22GitHub%22%5D%2C%20hugo%20%5Blabel%3D%22%D0%93%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%20Hugo%22%5D%2C%20ghpages%20%5Blabel%3D%22GitHub%20Pages%22%5D%3B%0A%0Aauthors%3C%3Dgitrepo%20%5Blabel%3D%22%D0%A1%D1%82%D0%B2%D0%BE%D1%80%D0%B5%D0%BD%D0%BD%D1%8F%20%D0%B2%D0%BB%D0%B0%D1%81%D0%BD%D0%BE%D1%97%20%D0%BA%D0%BE%D0%BF%D1%96%D1%97%22%5D%3B%0Aauthors%3C%3Dauthors%20%5Blabel%3D%22%D0%9B%D0%BE%D0%BA%D0%B0%D0%BB%D1%8C%D0%BD%D1%96%20%D0%B7%D0%BC%D1%96%D0%BD%D0%B8%22%5D%3B%0A%0A---%20%5Blabel%3D%22%5B%20%D0%90%D0%B2%D1%82%D0%BE%D1%80%D0%B8%20%D0%BA%D0%BE%D0%BC%D1%96%D1%82%D1%8F%D1%82%D1%8C%20%D0%B7%D0%BC%D1%96%D0%BD%D0%B8%20%D0%B2%20%D1%81%D0%B2%D0%BE%D1%97%20%D0%BE%D0%BA%D1%80%D0%B5%D0%BC%D0%B8%20%D0%B3%D1%96%D0%BB%D0%BA%D0%B8%20%5D%22%2C%20linecolor%3D%22%23008000%22%5D%3B%0A%0Aauthors%3D%3Egitrepo%20%5Blabel%3D%22%D0%9A%D0%BE%D0%BC%D1%96%D1%82(%D0%B8)%20%D0%B4%D0%BE%20%D0%B2%D0%BB%D0%B0%D1%81%D0%BD%D0%BE%D1%97%20%D0%B3%D1%96%D0%BB%D0%BA%D0%B8%22%5D%3B%0A%0Aauthors%3D%3Egitrepo%20%5Blabel%3D%22%D0%9F%D1%83%D1%88%20%D0%B4%D0%BE%20%D0%B2%D1%96%D0%B4%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D1%96%D1%8E%22%5D%3B%0A%0Aauthors%3D%3Egithub%20%5Blabel%3D%22%D0%92%D1%96%D0%B4%D0%BA%D1%80%D0%B8%D1%82%D0%B8%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%82%20%D0%BD%D0%B0%20%D0%B7%D0%BB%D0%B8%D1%82%D1%8F%22%5D%3B%0A%0A---%20%5Blabel%3D%22%5B%20%D0%9E%D0%B1%D1%80%D0%BE%D0%B1%D0%BA%D0%B0%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%82%D1%96%D0%B2%20%D0%BD%D0%B0%20%D0%B7%D0%BB%D0%B8%D1%82%D1%82%D1%8F%20(Pull%20Request)%20%5D%22%2C%20linecolor%3D%22%23008000%22%5D%3B%0A%0Agithub%3D%3Egithub%20%5Blabel%3D%22%D0%A1%D1%82%D0%B2%D0%BE%D1%80%D0%B5%D0%BD%D0%BD%D1%8F%20PR%22%5D%3B%0Aauthors%3D%3Egithub%20%5Blabel%3D%22%D0%97%D0%B0%D1%83%D0%B2%D0%B0%D0%B6%D0%B5%D0%BD%D0%BD%D1%8F%20%D0%B4%D0%BE%20PR%22%5D%3B%0Aauthors%3D%3Egithub%20%5Blabel%3D%22%D0%92%D0%B8%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8F%20%D0%B7%D0%B0%D1%83%D0%B2%D0%B0%D0%B6%D0%B5%D0%BD%D1%8C%20%D0%B4%D0%BE%20PR%22%5D%3B%0Agithub%3D%3Egithub%20%5Blabel%3D%22%D0%9E%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8F%20PR%22%5D%3B%0Agithub%3D%3Egitrepo%20%5Blabel%3D%22%D0%97%D0%BB%D0%B8%D1%82%D1%82%D1%8F%20PR%20%D1%83%20%D0%B3%D1%96%D0%BB%D0%BA%D1%83%20master%22%5D%3B%0A%0A---%20%5Blabel%3D%22%5B%20%D0%93%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%86%D1%96%D1%8F%20Hugo%20%D1%82%D0%B0%20%D0%BF%D1%83%D0%B1%D0%BB%D1%96%D0%BA%D0%B0%D1%86%D1%96%D1%8F%20%5D%22%2C%20linecolor%3D%22%23FF0000%22%5D%3B%0A%0Agitrepo%3D%3Ehugo%20%5Blabel%3D%22%D0%97%D0%B0%D0%BF%D1%83%D1%81%D1%82%D0%B8%D1%82%D0%B8%20Hugo%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20GitHub%20Actions%22%5D%3B%0A%0Ahugo%3D%3Eghpages%20%5Blabel%3D%22%D0%9E%D0%BF%D1%83%D0%B1%D0%BB%D1%96%D0%BA%D1%83%D0%B2%D0%B0%D1%82%D0%B8%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%86%D1%96%D1%8E%22%5D%3B%0A%0A---%20%5Blabel%3D%22%5B%20%D0%9D%D0%BE%D0%B2%D0%B0%20%D0%B2%D0%B5%D1%80%D1%81%D1%96%D1%8F%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%86%D1%96%D1%97%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%B0%20%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B4%D0%BB%D1%8F%20%D0%BA%D0%BE%D1%80%D0%B8%D1%81%D1%82%D1%83%D0%B2%D0%B0%D1%87%D1%96%D0%B2%20%5D%22%2C%20linecolor%3D%22%23FF0000%22%5D%3B%0A%0A%7D)

Рисунок 4.6 – Фази процесу публікації нової версії

Перед початком роботи кожен автор робить повну копію віддаленого
репозиторію на свій компʼютер, виконуючи команду «git clone». Далі
автори створюють локальну копію основної гілки командою «git branch».
Всі автори працюють з своїми окремими локальними копіями основної гілки.

Всі застосовані зміни кожен автор зберігає в окремій гілці в локальному
репозиторії, виконуючи команду «git commit». Збережені і проіндексовані
в локальному репозиторії зміни своєї гілки також доцільно відправляти на
віддалений репозиторій командою «git push». Таким чином автори
синхронізують дані між своїм локальним і віддаленим репозиторієм і
запобігають втраті своїх змін у випадку поломки компʼютера.

Після того, як відредагований документ вважається автором готовим до
злиття в основну гілку, автор відкриває запит на злиття (pull request)
своєї гілки з основною гілкою, викорисовуючи веб-інтерфейс сайту GitHub.

Далі відбувається перегляд змін, запропонованих автором, іншими
авторами. В залежності від потреб проекту і налаштувань репозиторію, для
злиття запропонованих змін може вимагатись отримання схвалення від
одного або більше співавторів, а також проходження автоматизованих
перевірок (наприклад перевірка синтаксису спеціальних форматів).

Якщо запит на злиття відхилено з зауваженнями, зауваження можуть бути
враховані автором. В цьому випадку автор робить необхідні додаткові
зміни і знову додає нові коміти в свою гілку. При цьому інтерфейс
перегляду запиту на зміни відобразить виправлення і запит на злиття
будуть переглядати знову із врахуванням останніх виправлень. Коли запит
на злитя схвалено, GitHub додає запропоновані зміни в основну гілку
(master).

Після цього виконується автоматизований процес публікації змін. GitHub
Actions автоматично запустить генератор Hugo, який із текстових markdown
файлів за допомогою тем і шаблонів генерує статичний веб-сайт.
Згенерований таким чином веб-сайт стає доступним онлайн за допомогою
GitHub Pages.
