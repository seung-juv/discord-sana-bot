FROM node:16-alpine
WORKDIR /app
COPY . .
RUN yarn install --frozen-lockfile
RUN yarn build

CMD ["node", "./dist"]
