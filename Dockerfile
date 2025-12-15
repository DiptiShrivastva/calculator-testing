# Use a lightweight Node.js base image
FROM node:18-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install all dependencies (dev + prod)
RUN npm install

# Copy the rest of your code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Default command to start your app
CMD ["npm", "start"]
