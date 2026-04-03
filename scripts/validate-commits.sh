#!/bin/bash

COMMIT_MSG=$(git log -1 --pretty=%B)

echo "Latest commit message: $COMMIT_MSG"

if [[ $COMMIT_MSG =~ ^(feat|fix|docs|style|refactor|test|chore)(\(.+\))?:\ .+ ]]; then
  echo "✅ Conventional commit valid"
  exit 0
else
  echo "❌ Invalid commit message"
  echo "Use format like: feat: add login page"
  exit 1
fi
