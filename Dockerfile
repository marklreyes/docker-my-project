FROM node:22-alpine

USER node

COPY index.js /home/node/code/index.js

CMD ["node", "/home/node/code/index.js"]
