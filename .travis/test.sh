#!/usr/bin/env bash

echo "Made it to the checks"

echo ${REPO}

# If current branch is master, push to ___
if [ "${TRAVIS_BRANCH}" = "master" ]; then
    echo "master"
fi

# Check if it is a pull request
if [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
    echo "Pull Request, no builds pushed"
fi