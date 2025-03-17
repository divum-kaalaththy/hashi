# Use Node.js Alpine image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source code
COPY . .

# Make entrypoint script executable
RUN chmod +x entrypoint.sh

# Use the script as the container entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
