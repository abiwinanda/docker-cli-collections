# Build image (in current DIR). By default this will look for "Dockerfile"
docker build .

# Build image (in current DIR) with custom name or tag
docker build -t ${IMAGE_NAME} .
docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} . # often we use ":" to separate the image name with the version

# Build image from a custom Dockerfile. e.g:
# docker build -f Dockerfile.local .
# docker build -f ./DirectoryName/Dockerfile .
docker build -f ${DOCKERFILE_PATH} .
