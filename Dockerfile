# Use node Docker image, version 16-alpine
FROM quay.io/repository/ibmgaragecloud/node:lts-stretch

# From the documentation, "The WORKDIR instruction sets the working directory for any
# RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile"
WORKDIR /app

# COPY package.json and package-lock.json into root of WORKDIR
COPY . .

# Executes commands
RUN npm install


# Document that this container exposes something on port 3000
EXPOSE 3000

# Command to use for starting the application
CMD ["npm", "start"]
