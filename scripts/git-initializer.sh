#!/bin/bash
# marcosomma - git-initializer.sh
# Initialize a directory with git, stage and commit all existing files, pushed everything.
# Copyright 2016 Marco Somma
# MIT License

REMOTE_BRANCH=$1
INITIAL_COMMIT_MESSAGE="Initial commit"

if [ -d ".git" ]; then
  echo "This directory has already been initialized with git."
  exit 1
else
echo " --------------------------------------------- "
  echo "- [AUTO GIT INITIALIZA WORKFLOW] "
  if [ ! -f ".gitignore" ]; then
    echo "- [CREATE .gitignore] "
      touch .gitignore;
  fi

  if [ ! -f "README.md" ]; then
    echo "- [CREATE README.md] "
      touch README.md;
  fi

  echo "-- GIT INIT >>"
  git init
  if (( $? )); then
      echo "Unable to initialize your directory"
      exit 1
  fi
  echo "-- GIT STATUS >>"
  git status
  echo "-- GIT ADD --ALL >>"
  git add --all
  if (( $? )); then
      echo "Unable to stage files"
      exit 1
  fi
  echo "-- GIT STATUS >>"
  git status
  echo "-- GIT COMMIT >>"
  git commit -am "$INITIAL_COMMIT_MESSAGE"
  if (( $? )); then
      echo "Unable to create the initial commit"
      exit 1
  fi
  echo "-- GIT REMOTE ADD >>"
  git remote add origin $REMOTE_BRANCH
  echo "-- GIT PUSH >>"
  git push -u origin master
  echo " --------------------------------------------- "
  echo "-- FINISH >> The directory was initialized, an initial commit was performed and everything was pushed to master $REMOTE_BRANCH"
fi
exit 0
