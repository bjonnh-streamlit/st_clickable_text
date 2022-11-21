FROM node:12-slim

ARG NODE_ENV=production
RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

ENV NODE_PATH=/srv/app/node_modules
WORKDIR /srv/app
RUN mkdir /home/node/.ssh
#COPY yarn.lock ./

CMD ["bash"]
