FROM node:15-alpine3.10

MAINTAINER Jed Clinger <jed.clinger@gmail.com>

RUN apk update && apk add bash git curl make openjdk11-jdk && curl -s https://download.clojure.org/install/linux-install-1.10.3.814.sh | bash && clojure -e '(println "Installed Clojure")'

RUN curl -sLO https://raw.githubusercontent.com/babashka/babashka/master/install && chmod +x install && ./install --dir /usr/local/bin --version 0.4.3 --download-dir /tmp --static

ENTRYPOINT ["/bin/bash"]
