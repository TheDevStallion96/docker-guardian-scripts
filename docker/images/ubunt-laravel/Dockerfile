# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install software
RUN apt-get update && \
    apt-get install -y \
    package1 \
    package2 \
    package3

# Cleanup
RUN apt-get clean

# Set an environment variable (optional)
ENV MY_ENV_VARIABLE=my_value

# Specify a default command to run when a container starts (optional)
CMD ["bash"]

