# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app code
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
