#!/bin/bash

VERSION="0.1"
IMAGENAME="hello-world"

if [[ "$1" == "build" ]]; then
  docker build --network=host -t ${IMAGENAME}:${VERSION} .

elif [[ "$1" == "run" ]]; then
docker run \
  --net host \
  ${IMAGENAME}:${VERSION}

elif [[ "$1" == "publish" ]]; then
  docker push ${IMAGENAME}:${VERSION}

else
  cat <<EOF
Usage: $0 action

Actions:
  build   - Build docker image
  run     - Run docker image
  publish - Publish docker image

Change the parameters in the run section to adjust for local testing variables.

EOF

fi

