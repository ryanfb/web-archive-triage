#!/bin/bash

while read url; do
  echo "$url";
  if curl -g --fail --retry 3 -L -o/dev/null -s --data "url=$url" "https://archive.is/submit/";
    then echo "$url" >> $1;
    else echo "$url" >> $2;
  fi
done
