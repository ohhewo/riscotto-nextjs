# Use an official Node.js runtime as the parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the application's dependencies inside the container
RUN npm install

# Copy the application's source files to the container
COPY . .

# Build the Next.js app
RUN npm run build

# Specify the command to run the application
CMD ["npm", "start"]
