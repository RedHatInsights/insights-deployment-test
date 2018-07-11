#!/usr/bin/env bash

echo "setup"

if [ "${TRAVIS_BRANCH}" = "master" ]; then
    openssl aes-256-cbc -K $encrypted_2eeb7a4fa1ff_key -iv $encrypted_2eeb7a4fa1ff_iv -in deploy_key.enc -out deploy_key -d
    chmod 600 deploy_key
    eval `ssh-agent -s`
    ssh-add deploy_key
fi