
# Use Node.js 18 for arm64
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --verbose

# Copy app code
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["node", "app.js"]
