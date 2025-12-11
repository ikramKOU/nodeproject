# Simple Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install npm dependencies
COPY package.json package-lock.json* ./
RUN npm ci --only=prod

# Copy source files
COPY src ./src

# Command to run (demo only)
CMD ["node", "-e", "console.log('Docker image built successfully!')"]
