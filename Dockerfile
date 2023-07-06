# Use the official Node.js 18 image as the base image
FROM node:18
# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the rest of the application code to the working directory
COPY . /usr/src/app/

# Install dependencies
RUN npm install


# Expose the port on which the server listens
EXPOSE 3000

ENV NAME dockerservers

# Start the server
CMD ["npm","start"]
