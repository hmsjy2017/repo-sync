FROM alpine

LABEL "repository"="http://github.com/hmsjy2017/repo-sync"
LABEL "homepage"="http://github.com/hmsjy2017/repo-sync"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]
