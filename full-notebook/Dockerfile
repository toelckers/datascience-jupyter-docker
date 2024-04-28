# Use the latest ubuntu image as base for the new image
FROM ubuntu:latest

# Run a system update
# Install python3 and pip3
RUN apt-get update && apt-get install -y python3 \
                                         python3-pip

# Install python's requirements
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Create a new system user
RUN useradd -ms /bin/bash jupyter

# Change to this new user
USER jupyter

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser"]