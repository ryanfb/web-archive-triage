#!/bin/bash

while read url; do
  echo "$url";
  if curl -g -s --fail -I -o/dev/null "http://archive.is/timegate/${url}";
    then echo "$url" >> $1;
    else echo "$url" >> $2;
  fi
done
