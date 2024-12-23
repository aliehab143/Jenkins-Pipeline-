# Use the official Node.js image
FROM node:14-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json file to the container
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
