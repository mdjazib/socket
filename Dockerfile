FROM node:18

# Set working directory to root of container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json if exists
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy everything else (including server.js)
COPY . .

# Expose server port
EXPOSE 3001

# Run your server
CMD ["node", "server.js"]
