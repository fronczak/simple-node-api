#!/bin/sh
ssh -i "~/Downloads/sample-node-js-application-for-split-io.pem" ubuntu@ec2-3-135-64-146.us-east-2.compute.amazonaws.com <<EOF
    cd ~/simple-node-api
    git pull origin master
    curl -o-   https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh    | bash
    . ~/.nvm/nvm.sh
    nvm install v10.11.0
    npm install
    npm install -g nodemon pm2
    pm2 restart index.js
    exit
EOF
