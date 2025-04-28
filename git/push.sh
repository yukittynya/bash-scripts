#!/bin/bash

if ! git rev-parse --is-inside-work-tree &> /dev/null; then
  echo "Not in a git repo silly goober :3"
  exit 1
fi

git add .

echo "Commit message?"
read commit_msg

git commit -m "$commit_msg"

echo "Branch?"
read branch

git push origin $branch
