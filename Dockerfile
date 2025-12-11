# Simple Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install npm dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy source files
COPY src ./src

# Command to run (demo only)
CMD ["node", "-e", "console.log('Docker image built successfully!')"]
CMD ["npm", "test"]