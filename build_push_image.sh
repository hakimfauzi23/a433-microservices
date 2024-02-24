docker build -t item-app:v1 . # Command to build image from the dockerfile with name item-app:v1
docker image ls ## Show images on host
docker tag item-app:v1 ghcr.io/hakimfauzi23/item-app:v1 ## Rename image for same format to github container registry

echo $CR_PAT | docker login ghcr.io -u hakimfauzi23 --password-stdin ## Login to github container registry
docker push ghcr.io/hakimfauzi23/item-app:v1 # Push image to github container registry