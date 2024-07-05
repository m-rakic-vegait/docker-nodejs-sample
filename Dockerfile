FROM node:18-alpine AS dev
WORKDIR /app
COPY . .
RUN npm install
CMD [ "npm", "run", "dev" ]

FROM node:18-alpine AS prod
WORKDIR /app
COPY --from=dev /app .
EXPOSE 3000
CMD [ "node", "src/index.js" ]
