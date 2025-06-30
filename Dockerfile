FROM node:22-alpine

USER node

WORKDIR /home/node/code

COPY --chown=node:node package-lock.json package.json ./

RUN npm ci

CMD ["node", "index.js"]
