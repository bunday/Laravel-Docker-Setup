# Laravel-Docker-Setup
This shows how i set up a docker container for Nginx, PHP, MySQL, Redis and MongoDB. You can remove any service you dont need as well as add new ones.

The src folder should be your laravel project folder.

If you change the name from src, ensure you change it in the `docker-compose.yml`

After setting this up, run the following commands

```bash
docker-compose build
docker-compose up -d
```
You should have all the images running.

`docker ps` will list your list your images.

You can visit `http://localhost:8080` to see your laravel app. If you change the port in the `docker-compose.yml` file, then replace the 8080 here as well.

Accessing Laravel project to run composer commands:
eg `composer update`
```bash
docker-compose exec php php /usr/local/bin/composer update
```

Accessing my laravel project to run artisan:
eg `php artisan migrate`
```bash
docker-compose exec php php /var/www/artisan migrate 
```

Happy Coding 🎉
