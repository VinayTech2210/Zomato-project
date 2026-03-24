FROM --platform=linux/amd64 node:18
WORKDIR /app

# Copy package.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install --verbose

# Copy the rest of the app
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
