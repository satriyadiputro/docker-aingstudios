FROM node:18-alpine

RUN apk add --no-cache libc6-compat
WORKDIR /app

COPY package*.json ./
RUN  npm install
COPY . .

RUN npm run build

EXPOSE 3000

USER node

CMD ["npm", "run", "start"]