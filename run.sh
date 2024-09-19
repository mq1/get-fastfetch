#!/bin/sh

while true; do
  echo -e "HTTP/1.1 200 OK\n\n $(fastfetch --format json)" | nc -l -p 3000
done
