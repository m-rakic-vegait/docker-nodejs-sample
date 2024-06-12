FROM node:18-alpine AS base
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . .

FROM node:18-alpine AS prod
WORKDIR /app
COPY --from=base /app .

FROM node:18-alpine AS dev
WORKDIR /app
COPY --from=base /app .
EXPOSE 3000
ENTRYPOINT sh -c "npm run dev"
