FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY src/package*.json ./
RUN npm install

# Copy application code
COPY src/ ./

# Don't run as root
USER node

# Expose port
EXPOSE 3000

CMD ["node", "index.js"]