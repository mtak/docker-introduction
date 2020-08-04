#!/bin/bash

if [ -f /motd.txt ]; then
  cat /motd.txt
  exit 0
fi

echo -e "\e[32m"

banner "Hello"
banner "World!"

echo -e "\e[0m"

cat <<EOF

   Congratulations ${NAME}!

You have launched your first Docker container. What just happened:
 - dockerd downloaded this container from Docker Hub
 - dockerd created a new container
 - dockerd started shell script /hello_world.sh

EOF

