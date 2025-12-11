# # Simple Node.js image
# FROM node:20-alpine

# # Set working directory
# WORKDIR /app

# # Copy package files and install dependencies
# COPY package.json package-lock.json* ./
# RUN npm ci --only=prod

# # Copy source files
# COPY src ./src

# # Command to run (demo only)
# CMD ["node", "-e", "console.log('Docker image built successfully!')"]


# Simple Node.js image
FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci --only=prod

COPY src ./src

CMD ["node", "-e", "console.log('Docker image built successfully!')"]
