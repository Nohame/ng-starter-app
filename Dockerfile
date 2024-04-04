ARG ANGULAR_HOST=0.0.0.0
ARG ANGULAR_PORT=4200
ARG APP_NAME=angular
ARG NODE_VERSION=20

FROM node:${NODE_VERSION}-alpine

ENV NANGULAR_HOST=${NANGULAR_HOST}
ENV ANGULAR_PORT=${NANGULAR_PORT}
ENV APP_NAME=${APP_NAME}

RUN apk add --no-cache bash unzip rsync curl screen nano git
RUN echo "alias ll='ls -lisa'" >> ~/.bashrc
RUN npm install -g @angular/cli

WORKDIR /usr/src/app

COPY init-project.sh /usr/src/app/init-project.sh
COPY . /usr/src/app

EXPOSE ${ANGULAR_PORT}

ENTRYPOINT ["/usr/src/app/init-project.sh"]