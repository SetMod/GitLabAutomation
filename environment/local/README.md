# Practice

## Spin up GitLab Web and GitLab runner

```sh
docker compose up -d
docker compose stop
docker compose start
docker compose logs
docker compose down
```

## Login to GitLab

Username: `root`
Password:

```sh
./login.sh
```

After logging in create your onw user with Administrator access.

## Clone repository

> NOTE: Add your SSH pub key to GitLab and edit ~/.ssh/config with:
>
> ```config
> Host localhost
>     Port 2222
>     User git
>     IdentityFile ~/.ssh/<private_key>
> ```

```sh
# HTTP(S)
git clone http://localhost:8080/practice/automation.git

# SSH
git clone ssh://git@localhost:2222/practice/automation.git
```

## Configure gitlab runner

Create GitLab group and project.

Retrieve the runner registration token via this link:

<http://localhost:8080/${group}/${project}/-/settings/ci_cd>

> Example: <http://localhost:8080/practice/automation/-/settings/ci_cd>

Then expand "Runners" and press three dots next to "New project runner" to copy registration token.

Change token in `register.sh` script and execute it:

```sh
./register.sh
```

## Start test container

```sh
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v .:/app -w /app --name test docker:stable sh
```