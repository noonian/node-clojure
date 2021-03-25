FROM node:15-alpine3.10

MAINTAINER Jed Clinger <jed.clinger@gmail.com>

RUN apk update && apk add bash curl make openjdk11-jdk && curl -s https://download.clojure.org/install/linux-install-1.10.3.814.sh | bash

ENTRYPOINT ["/bin/bash"]
