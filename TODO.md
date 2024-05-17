# Have script to pull down all the repos I want

# Add scripts to handle ssh config

# Adding redis

```
docker run -d -v /myredis/conf:/usr/local/etc/redis --network vagrant_laravel-network --publish=6379:6379 --hostname=redis --name redis redis redis-server /usr/local/etc/redis/redis.conf
```
