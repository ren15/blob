IMAGE_NAME=$1
FILE=$2

podman pull $IMAGE_NAME
podman create --name temp $IMAGE_NAME
podman cp temp:/blob/$2 .
podman rm -f temp
podman rmi -f $IMAGE_NAME
