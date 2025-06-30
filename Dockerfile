FROM node:22-alpine

USER node

WORKDIR /home/node/code

COPY --chown=node . .

CMD ["node", "index.js"]
