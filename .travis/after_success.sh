#!/usr/bin/env bash

# If current branch is master, push to ___
if [ "${TRAVIS_BRANCH}" = "master" ]; then
    # Check if it is a pull request
    if [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
        echo "Pull Request, not pushing a build"
    else
        .travis/release.sh
    fi
fi

# If current branch has stable, push to ___