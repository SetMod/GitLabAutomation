#!/bin/sh

# Visit the GitLab URL (http://localhost:8080/users/sign_in), and sign in
# with the username "root" and the password from the following command:

docker exec -it gitlab-web \
    sh -c "grep 'Password:' /etc/gitlab/initial_root_password"
