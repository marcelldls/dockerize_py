# Docker commands are called directives (Capitalised)

# Specify base image
FROM python:3.9  # Step 1

# set the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow
WORKDIR /code  # Step 2

# set environment variables
ENV default_name="Default name"  # Step 3

# Copy files and directories to a Docker image filesystem
ADD main.python code  # Step 4
# ADD vs COPY - can accept a remote URL for its source argument

# Executes commands to create a new image
RUN pip install numpy  # Step 5

# specifies a command that will always be executed when the container starts
ENTRYPOINT []  # Default is ENTRYPOINT ["/bin/sh", "-c"]

# Arguments that will be fed to the ENTRYPOINT
# Set command the container executes by default when you run the built image
CMD ["python", "./main.py", ${default_name}]