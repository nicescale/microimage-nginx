#!/bin/bash

set -e

export CON_NAME=nginx_t
export REG_URL=d.nicescale.com:5000
export IMAGE=nginx
export TAGS="1.8 1.8.1"
export BASE_IMAGE=$REG_URL/microimages/alpine

docker pull $BASE_IMAGE

docker build -t $REG_URL/microimages/$IMAGE .

#./test.sh

echo "---> Starting push $REG_URL/microimages/$IMAGE:$VERSION"

docker push $REG_URL/microimages/$IMAGE
for t in $TAGS; do
  docker tag $REG_URL/microimages/$IMAGE $REG_URL/microimages/$IMAGE:$t
  docker push $REG_URL/microimages/$IMAGE:$t
done
