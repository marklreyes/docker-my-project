FROM node:22-alpine

USER node

WORKDIR /home/node/code

COPY --chown=node . .

RUN npm ci

CMD ["node", "index.js"]
