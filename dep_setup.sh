#!/bin/bash
echo "Starting deployment"
sleep 2
echo "Switch to working directory"
cd /var/www/roamtech.com/site
echo "Pull changes to site"
git stash
git pull git@gitlab.ci.emalify.com:roamtech-codebase/internal/development/roamtech-website/site.git
echo "Installing yarn"
yarn install
echo "Building yarn"
yarn build
echo  "Restart frontend service"
service website restart
echo "End of script"
