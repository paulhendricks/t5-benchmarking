#!/bin/bash

jupyter lab \
  --ip 0.0.0.0 \
  --port 8888 \
  --allow-root \
  --NotebookApp.token='' \
  --NotebookApp.password=''

