# Have script to pull down all the repos I want

# Add scripts to handle ssh config

# Laravel setup install the following in ansible and docker compose

```
sudo docker network create laravel-network

sudo docker volume create --name mysql_data

sudo docker run -d --name mysql \
  --env MYSQL_USER=bn_myapp \
  --env MYSQL_PASSWORD=bn_myapp \
  --env MYSQL_DATABASE=bitnami_myapp \
  --network laravel-network \
  --volume mysql_data:/bitnami/mysql \
  mysql:latest


sudo docker run -d --name laravel \
  -p 8000:8000 \
  --env DB_HOST=mysql \
  --env DB_PORT=3306 \
  --env DB_USERNAME=bn_myapp \
  --env DB_PASSWORD=bn_myapp \
  --env DB_DATABASE=bitnami_myapp \
  --network laravel-network \
  --volume ${PWD}/my-project:/app \
  bitnami/laravel:latest

sudo docker exec -it laravel php artisan migrate

```

# Configure docker so that sudo doesn't need to be used 

sudo usermod -aG docker $USER
