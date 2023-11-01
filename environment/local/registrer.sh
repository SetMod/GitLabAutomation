#!/bin/sh

# Retrieve the runner registration token via this link:
# http://localhost:8080/root/${project}/settings/ci_cd

# modify with your token
registration_token=GR1348941xPF_s5hPe1srLqbuUL_E
url=http://gitlab-web

docker exec -it gitlab-runner1 \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url ${url} \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode gitlab-network
    
# run the script to register the runner in Gitlab
