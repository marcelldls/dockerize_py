# Docker commands are called directives (Capitalised)
# Comments must be at the start of the line

# Step 1
# Specify base image
FROM python:3.9-slim

# Step 2
# set the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow
WORKDIR /code

# Step 3
# set environment variables
ENV default_name="Default name"

# Step 4
# Copy files and directories to a Docker image filesystem
ADD main.py /code
# ADD vs COPY - can accept a remote URL for its source argument

# Step 5
# Executes commands to create a new image
RUN pip install numpy

# Step 6
# specifies a command that will always be executed when the container starts
ENTRYPOINT []  
# Default is ENTRYPOINT ["/bin/sh", "-c"]

# Step 7
# Arguments that will be fed to the ENTRYPOINT
# Set command the container executes by default when you run the built image
# Shell form allows environment variable expansion
CMD python main.py ${default_name}
# exec form does not:
# CMD ["python", "main.py", ${default_name}]
