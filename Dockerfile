FROM mooxe/node

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

RUN \

  # npm install
  /bin/bash -l -c 'cnpm install -g gitbook' && \

  # git clone
  git clone https://github.com/Mooxe000/mooxe-docker-gitbook.git

WORKDIR /root/mooxe-docker-gitbook

# npm install
RUN \

  /bin/bash -l -c 'cnpm install' && \
  /bin/bash -l -c 'npm run build'

CMD ["/root/mooxe-docker-gitbook/start.sh"]

EXPOSE 3000
