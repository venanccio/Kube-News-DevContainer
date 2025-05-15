# Dockerfile (Produção)

# ---- Builder Stage ----
FROM node:16-alpine AS builder

WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
COPY . .

# ---- Final Stage ----
FROM node:16-alpine

WORKDIR /app

COPY --from=builder /app/node_modules/ ./node_modules/
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/src/ ./src/
COPY --from=builder /app/views/ ./views/

EXPOSE 8080

USER node

CMD ["node", "src/server.js"]
