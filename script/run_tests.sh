#!/bin/bash

echo "running tests"
echo "cd ./backend && .gradle clean test"

if [ $? -eq 0 ]; then
  echo "tests successful"
  echo "starting servers"
  sleep .5
  /bin/bash ./script/start_servers.sh
else
  echo "tests failed"
fi

