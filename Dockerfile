FROM alpine:latest

RUN apk add --update nodejs npm

RUN addgroup -S node && adduser -S node -G node

USER node

WORKDIR /home/node/code

COPY --chown=node:node package-lock.json package.json ./

RUN npm ci

CMD ["node", "index.js"]
