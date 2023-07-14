FROM debian:stable-slim

RUN apt update
RUN apt -yq install rsync openssh-client

# Labels
LABEL "com.github.actions.name"="Laravel Rsync Deploy Rsa"
LABEL "com.github.actions.description"="Deploy Laravel developed project with Rsync"
LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.icon"="upload"

LABEL "repository"="https://github.com/imsyuan/action-laravel-rsync-deploy"
LABEL "homepage"="https://github.com/imsyuan/action-laravel-rsync-deploy"
LABEL "maintainer"="imsyuan"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
