# Delete (non-running) docker container
docker container rm ${CONTAINER_ID}

# Force delete docker container
docker container rm ${CONTAINER_ID} --force
