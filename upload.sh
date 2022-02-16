IMAGE_NAME=$1
FILE=$2


rm -rf tmpDocker
mkdir -p tmpDocker

cp $2 tmpDocker

cat >tmpDocker/Dockerfile <<EOL
FROM alpine:3.15
COPY $2 /blob/
EOL

docker build -t $1 tmpDocker

rm -rf tmpDocker
