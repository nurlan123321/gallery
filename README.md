# gallery
Laravel 5, MySQL

git clone https://github.com/nurlan123321/gallery.git

Фреймворк Laravel 5.4 требует:

	PHP >= 5.6.4

Файл для БД - дамп

	DATABASE_DUMP.sql

Файл конфиг .env :

	DB_CONNECTION=mysql

	DB_HOST=127.0.0.1

	DB_PORT=3306

	DB_DATABASE=DATABASE NAME (Укажите здесь если не указано имя БД)

	DB_USERNAME=USERNAME (Укажите здесь если не указано имя пользователя)

	DB_PASSWORD=PASSWORD (Укажите здесь если есть пароль)

 

Контроллеры находятся:

	app/Http/Controllers

Модели находятся

	app/
	   Album.php
	   Photo.php

Виды находятся

	resources/views/


Я не стал убирать регистрацию при входе в админку

Для Front-end использовал Bootstrap и совсем немного Jquery
