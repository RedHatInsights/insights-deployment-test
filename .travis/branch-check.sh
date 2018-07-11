#!/usr/bin/env bash

# If current branch is master, push to ___
if [ "${TRAVIS_BRANCH}" = "master" ]; then
    chmod +x ./branch-check.sh
fi

# If current branch has stable, push to ___
if [ "${TRAVIS_BRANCH}" = "master" ]; then
    chmod +x ./branch-check.sh
fi

# Check if it is a pull request
if [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
    echo "Pull Request, no builds pushed"
fi