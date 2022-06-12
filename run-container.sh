# Run docker container from image
docker container run ${IMAGE_NAME}

# Run docker container from image with custom container name (use --name flag)
docker container run --name ${CONTAINER_NAME} ${IMAGE_NAME}

# Run docker container in a background (use -d flag)
docker container run -d ${IMAGE_NAME}

# Set host port to access docker container (use -p flag)
docker container run -p ${HOST_PORT}:${CONTAINER_PORT} -d ${IMAGE_NAME}

# Run docker container with env (use --env flag)
# Use --env flag more than once if you want to set multiple envs
docker container run -d --env ${ENV_NAME}={ENV_VALUE} ${IMAGE_NAME} # e.g docker container run -d --env GOOGLE_APPLICATION_CREDENTIALS=/gcp/config/application_default_credentials.json MyAppImage

# Run docker container with volume mount
docker container run -d -v "${HOST_DIR}:${CONTAINER_DIR}" ${IMAGE_NAME} # e.g docker container run -d -v "$HOME/.config/gcloud:/gcp/config" MyAppImage

# Run docker container with read only volume mount
docker container run -d -v "${HOST_DIR}:${CONTAINER_DIR}:ro" ${IMAGE_NAME} # e.g docker container run -d -v "$HOME/.config/gcloud:/gcp/config:ro" MyAppImage
