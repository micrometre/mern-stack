FROM debian:latest

RUN apt-get update && \
    apt-get install -y python3  curl wget supervisor gnupg apt-transport-https apt-utils 

RUN curl --silent --location https://deb.nodesource.com/setup_22.x | bash -

COPY . /app

# Set the working directory
WORKDIR /app

# Expose the port your application will run on (optional)
EXPOSE 8080

# Command to run your application
CMD ["/bin/bash", "-c", "your_command_here"] 

# Example: 
# CMD ["/bin/bash", "-c", "python3 app.py"]