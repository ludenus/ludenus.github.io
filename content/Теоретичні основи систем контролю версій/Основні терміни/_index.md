+++
archetype = "chapter"
title = "Основні терміни"
weight = 17
showInToc = true
+++

У сфері систем контролю версій розуміння специфічної термінології є
вкрай важливим для засвоєння основних принципів і операцій. Цей розділ
пояснює ключові терміни, що є фундаментальними для дискурсу щодо систем
контролю версій.

-   **Репозиторій**: Репозиторій, часто скорочено «репо», є сховищем
    файлів, де зберігаються файли в системі контролю версій. Його можна
    розглядати як базу даних змін, що дозволяє користувачам отримувати
    попередні версії файлів і відстежувати модифікації з часом [35].

-   **Різниця або зміна (diff**): Скорочено від «difference», процес
    порівняння двох версій файлу із спеціальним позначенням для
    виділення зміни даних від однієї версії до іншої, а також сам
    результат такого порівняння, тобто різниця між двома версіями. Ця
    функція є надзвичайно важливою для розуміння конкретних змін,
    зроблених в кожній ітерації файлу [33].

<img src="/images/uad-multimedia-doc-0020-diff.png" style="width:6.88976in;height:2.98611in" />

Рисунок 3.1 – Відображення різниці між версіями файл у GitHub [45]

-   **Патч (patch)**: Патч є файлом, що складається зі списку змін
    (diffs) і використовується для трансформації однієї версії файлу
    (або набору файлів) в іншу. Патчі часто використовуються для
    пропонування змін у спільних проектах або для оновлення програмного
    забезпечення [42].

-   **Коміт (commit)**: У системах контролю версій коміт є дією, що
    фіксує зміни в репозиторії. Кожен коміт має унікальний в межах
    репозиторію ідентифікатор (часто хеш-суму від зафіксованих даних),
    який дозволяє відрізняти одну версію від іншої і відстежувати зміни
    між ними. Це схоже на знімок вашого проекту в певний момент [19].

<img src="/images/uad-multimedia-doc-0010-commits.png" style="width:6.88976in;height:5.44444in" />

Рисунок 3.2 – Список комітів в GitHub [45]

-   **Тег (tag)**: Тег є маркером, що позначає певну важливу точку в
    історії репозиторію, наприклад випуск стабільної версії. Теги часто
    використовуються для версіювання, дозволяючи легший доступ до певних
    версій програмного коду або документації [30].

[<img src="/images/uad-multimedia-doc-0050-release.png" style="width:6.12512in;height:3.0116in" />](https://github.com/ludenus/uad-multimedia-doc/blob/master/img/uad-multimedia-doc-0050-release.png)

Рисунок 3.3 – Створення нового тегу в GitHub [45]

-   **Гілка (branch)**: Відгалуження, яке передбачає відхід від основної
    лінії розробки і продовження роботи в автономному режимі, без
    внесення змін в основну лінію. Може відрізнятися від основної лінії
    змінами в файлах, іншим набором комітів, або іншою їх послідовністю.
    Після завершення автономної роботи (і перевірки роботоспроможності
    версії), зміни можуть бути злиті в основну гілку розробки. Ця
    концепція є вкрай важливою для підтримки паралельної розробки серед
    декількох членів команди [43].

<img src="/images/uad-multimedia-doc-0030-branch.png" style="width:6.12512in;height:3.33592in" />

Рисунок 3.4 – Основна гілка розробки в GitHub [45]

<img src="/images/uad-multimedia-doc-0060-newbranch.png" style="width:6.88976in;height:2.875in" />

Рисунок 3.5 – Створення нової гілки в GitHub [45]

-   **Злиття (merge)**: Злиття - це процес інтеграції змін з різних
    гілок назад в єдину гілку, часто основну. Цей процес іноді може
    призводити до конфліктів, які потребують вирішення [19].

-   **Запит на злиття (pull request, merge request)**: Запит на злиття
    (або запит на об’єднання в деяких системах) є способом внесення змін
    до основної гілки проекту. Він сповіщає членів команди, що окремий
    користувач завершив свій набір змін і просить об’єднати ці зміни з
    основною гілкою [40].

<img src="/images/uad-multimedia-doc-0070-pr.png" style="width:6.88976in;height:2.43056in" />

> Рисунок 3.6 – Створення запиту на злиття в GitHub [45]
>
> Зазвичай запит на злиття застосовується, коли над проектом працює
> декілька людей. Типово заохочує інших учасників проекту робити
> перегляд змін і надавати зворотній зв’язок автору. Запит на злиття
> може бути прийнято (бранч користувача буде злитий з основною гілкою),
> відхилено (пропоновані зміни однозначно небажані з точки зору інших
> співавторів), або відмічено для подальшого обговорення і вдосконалення
> запропонованих змін.

<img src="/images/uad-multimedia-doc-0080-merge.png" style="width:6.88976in;height:6.11111in" />  
Рисунок 3.7 – Перегляд запиту на злиття в GitHub [45]

-   **Конфлікт зливання (merge conflict)**: В контексті систем контролю
    версій конфлікт виникає, коли зміни в одній гілці несумісні зі
    змінами в іншій, таким чином вони роблять неможливим злиття.
    Вирішення конфліктів вимагає ручного втручання в процес злиття,
    зазвичай потребує участі декількох співавторів, що спільно працюють
    над кодом і є критичним аспектом спільної роботи в розподілених
    системах контролю версій [44].

<img src="/images/uad-multimedia-doc-0140-conflict-detected.png" style="width:6.13554in;height:1.66152in" />

Рисунок 3.9 – Конфлікт, виявлений при порівнянні гілок в GitHub [45]

<img src="/images/uad-multimedia-doc-0120-conflict-files.png" style="width:6.0244in;height:2.41523in" />

Рисунок 3.9 – Файли, зміни в яких спричиняють конфлікт в GitHub [45]

<img src="/images/uad-multimedia-doc-0130-conflict-resove.png" style="width:6.19804in;height:1.88473in" />  
Рисунок 3.10 – Ручне редагування для вирішення конфлікту злиття в GitHub
[45]

Розуміння цих термінів забезпечує базовий лексикон для поглиблення в
принципи та функціональні можливості систем контролю версій. Кожен
термін представляє критичний компонент у складному процесі управління та
відстеження змін у розробці програмного забезпечення та документації.
