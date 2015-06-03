#!/bin/bash

app='/root/mooxe-docker-gitbook/bin/gitbook.pm2.json'

/bin/bash /root/.nvm/nvm.sh
/bin/bash -l -c 'git pull'
/bin/bash -l -c 'npm run clean'
/bin/bash -l -c 'npm run build'
/bin/bash -l -c 'pm2 dump'
/bin/bash -l -c "pm2 startOrRestart ${app}"

while true
do
  sleep 1d
done
