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
    --name docker-stable \
    --url ${url} \
    --executor docker \
    --docker-image docker:stable \
    --docker-services_privileged=true \
    --docker-volumes "/cache" \
    --docker-volumes "/certs" \
    --docker-network-mode gitlab-runner-network

# run the script to register the runner in Gitlab
