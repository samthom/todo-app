# Base "image" 
# This is the read only part. We are importing all the readonly layers which are predefined and adding our own steps into it. 
FROM node:16-alpine

# New steps/layers

# Setting a working directory using `WORKDIR` command
# Command sets the specified directory as the default dir for all the following commands. Such as RUN, CMD, ADD
WORKDIR /usr/src/app

# Copy current directory to the image. Copies the entire project folder to the image for running.
# Important whenever you copy/connect between host and guest in docker. Left is always host and right is guest. H
# Here the first . denotes the host system dir and the second . denotes the remote dir inside guest(Image)
COPY . .

# Install all the dependencies for the app to run
RUN npm install --production

# Defining env variables. Most common way is to use a env file with `--env-file` flag or `-e` flag with env values directly specified in the command.
ENV PORT 8888

# Exposing port 
EXPOSE ${PORT}

# Starting command specified. We can use `ENTRYPOINT` for the same purpose. This starts our application
CMD [ "npm", "run", "start" ]