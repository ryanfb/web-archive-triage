#!/bin/bash

while read url; do
  echo "$url";
  if curl -g --fail -L -o/dev/null -s "http://web.archive.org/save/$url";
    then echo "$url" >> $1;
    else echo "$url" >> $2;
  fi
done
