FROM --platform=linux/arm64 node:18
WORKDIR /app

# Copy package.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install --verbose

# Copy rest of code
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
