# Removes all stopped containers, dangling images, and unused networks
docker system prune

# Additionally remove all unused images not just the dangling ones
docker system prune -a

# Additionally remove all unused volumes
docker system prune --volumes
