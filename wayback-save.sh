#!/bin/bash

while read url; do \
  echo "$url"; \
  curl -L -o/dev/null -s "http://web.archive.org/save/$url"; \
done
