# API для блога
Тестовое задание

Задание было начато в 13:30 и закончено в 20:30

Подробнее о нужных директориях:
-------------------

      controllers/             Все контроллеры API
      models/                  Все модели API
      dumps/
        dumps/yii_api.sql      База данных
      config/                  
        config/web/            Параметры приложения (включая ЧПУ, роуты и прочее)
        config/db              Настройки БД
      web/                     Точка входа



Зависимости
------------

Проект писался на PHP 7.4 + MySQL (MariaDB 10.4.27)


Инсталяция проекта
------------

### Через Composer

~~~
composer install
~~~

Далее нужно импортировать БД в phpmyadmin (или что-нибудь другое...) с папки `dumps/yii_api.sql`

Этот sql файл импортирует таблицы. То есть его нужно импортировать в созданную БД. Например, `yii_api`

После чего выставить нужные настройки в config/db.php:

```php
return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=localhost;dbname=yii_api',
    'username' => 'root',
    'password' => '',
    'charset' => 'utf8',
];
```
<h3> В проекте настроен .htaccess </h3>
Так что если вы используете OpenServer Panel или Xampp, то не нужно указывать путь до точки входа /web. Достаточно до корневой директории проекта.

### Текст ошибки на главном экране после успешного запуска проекта — это нормально!

### Доступные маршруты:
**Posts**
`/posts`
`/posts/1...101`
`/posts?sort=id | /posts?sort=-id (по убыванию)`
`/posts?page=2...6`
`CRUD`

**Users**
`/users`
`/users/1..13`
`/user/profile`
`CRUD`

**Comments**
`/comments`
`/comments/1...`
`CRUD`

**Category**
`/category`
`/category/1...`
`CRUD`

**Что также сделано:** 
- Валидация
- Профили users

**Что реализовать не успел:** 
- Авторизацию/регистрацию
- Грамотное отображение профилей
- Лайки
- Хэш паролей


Особенности проекта и вообще PS...
-------------

Особую сложность (и больше всего времени) я потратил на проектирование базы данных. В проекте есть баг, который связан с роутами и ЧПУ в частности:
Если в конфиге поставить `'enableStrictParsing' => true`,
```php
'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'enableStrictParsing' => false,
            'rules' => [
                ['class' => 'yii\rest\UrlRule', 'controller' => 'user', 'pluralize' => true],
                ['class' => 'yii\rest\UrlRule', 'controller' => 'post', 'pluralize' => true],
                ['class' => 'yii\rest\UrlRule', 'controller' => 'comment', 'pluralize' => true],
            ],
```

чтобы было так: `/userS` или `/postS`, а не `/post` или `/user` как предлагает yii, то `actionProfile() {}` в `controllers/UserController.php`
перестает работать должным образом. При этом, правильно он работает ТОЛЬКО при такой ссылке `/user/profile`. Хотел бы это исправить.

Как можно увидеть из этого всего, на `yii2` абсолютно легко построить `RestAPI`, если не тратить время на проектирование БД, `Git` и прочее. Думаю, на `Laravel` это задание было бы куда интереснее. По крайней мере для меня =)

Кстати, данные в БД выставлял все вручную xD

### Мой телеграм

<a href="https://fe2ck.t.me/">Никита Баутин</a>
