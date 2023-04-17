FROM node:19.8.1 as base
WORKDIR /app
COPY . ./

FROM base as production
ENV NODE_ENV=production
RUN npm ci
CMD ["node", "server.js"]

FROM base as development
ENV NODE_ENV=development
RUN npm i -g nodemon && npm i
CMD ["nodemon", "server.js"]
