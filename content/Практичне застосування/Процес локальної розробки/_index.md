+++
archetype = "chapter"
title = "Процес локальної розробки"
weight = 27
showInToc = true
+++

Для роботи з форматом markdown автори можуть використовувати будь-який
текстовий редактор, але доцільним буде використання сучасних
інтегрованих середовищ розробки (IDE), наприклад IntelliJ IDEA або
Visual Studio Code. Сучасні середовища розробки підтримують інтеграцію з
Git і GitHub, таким чином авторам не обовʼязково запамʼятовувати і
використовувати консольні команди в командному рядку, замість цього
можна застосовувати графічний інтерфейс середовища розробки. Також IDE
надають додаткові функції при роботі з markdown файлами, а саме:
підсвічування синтаксису, виділення елементів, та попередній перегляд
готового тексту в браузері (web-preview).

<img src="/images/uad-multimedia-doc-0160-idea.png" style="width:6.84462in;height:4.33457in" />

Рисунок 4.7 – Робота з markdown в IntelliJ IDEA

<img src="/images/uad-multimedia-doc-0170-vscode-online.png" style="width:6.85402in;height:4.32607in" />

Рисунок 4.7 – Робота з markdown в Visual Studio Code

Зауважимо, що шаблони Hugo можуть змінювати зовнішній вигляд і
форматування тексту при побудові статичного сайту, тобто опублікована
документація буде відрізнятися від попереднього перегляду (web-preview).
Для того, щоб автори могли бачити фінальний варіант, який буде доступний
користувачам після публікації, Hugo підтримує спеціальний режим для
локального розгортання сайту. В цьому режимі Hugo відстежує всі локальні
зміни всіх файлів одразу після їх збереження на локальну файлову
систему, и одразу застосовує до змінених файлів всі сконфігуровані стилі
і шаблони, перебудовуючи відповідні сторінки статичного сайту, який
робить доступним для перегляду в браузері на локальній мережевій адресі
[<u>http://localhost:1313</u>](http://localhost:1313).

<img src="/images/uad-multimedia-doc-0190-hugo-localhost.png" style="width:6.88976in;height:4.36111in" />

Рисунок 4.8 – Hugo в режимі локального розгортання
