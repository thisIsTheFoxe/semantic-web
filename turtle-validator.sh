#!/bin/bash
output=$(npm run $1)
if [[ $output == *"0 warnings and 0 errors"* ]]; then
  echo "Turtle syntax correct."
  exit 0
else
  echo "Turtle validator failed!"
  exit 1
fi