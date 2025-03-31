FROM node:18-alpine
RUN apk add --no-cache bash git
WORKDIR /workspace
COPY package.json package-lock.json ./
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
