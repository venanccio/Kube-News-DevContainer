FROM node:16

RUN apt-get update && apt-get install -y \
    git \
    procps \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
RUN mkdir -p /workspace/node_modules && chown -R node:node /workspace/node_modules
EXPOSE 8080
CMD ["node", "src/server.js"]
