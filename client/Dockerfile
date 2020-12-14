FROM node:14

RUN mkdir -p /app/client
WORKDIR /app/client

COPY ./client/package.json .
COPY ./client/yarn.lock .
RUN yarn

COPY ./client .

COPY ./client/entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]