# Have script to pull down all the repos I want

# Add scripts to handle ssh config

# Laravel setup install the following in ansible and docker compose

```
version: '3.8'

services:
  mysql:
    image: mysql:latest
    container_name: mysql
    environment:
      MYSQL_USER: bn_myapp
      MYSQL_PASSWORD: bn_myapp
      MYSQL_DATABASE: bitnami_myapp
    volumes:
      - mysql_data:/bitnami/mysql
    networks:
      - laravel-network

  laravel:
    image: bitnami/laravel:latest
    container_name: laravel
    ports:
      - "8000:8000"
    environment:
      DB_HOST: mysql
      DB_PORT: 3306
      DB_USERNAME: bn_myapp
      DB_PASSWORD: bn_myapp
      DB_DATABASE: bitnami_myapp
    volumes:
      - ./my-project:/app
    depends_on:
      - mysql
    networks:
      - laravel-network

volumes:
  mysql_data:

networks:
  laravel-network:
    driver: bridge
```

# Configure docker so that sudo doesn't need to be used 

sudo usermod -aG docker $USER
