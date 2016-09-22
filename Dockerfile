FROM golang

# Create the directory where the application will reside
RUN mkdir /app/

# Copy the application files (needed for production)
ADD myapp /app/helloworld


# Set the working directory to the app directory
WORKDIR /app

# Expose the application on port 8080.
EXPOSE 8080

# Set the entry point of the container to the application executable
ENTRYPOINT /app/MathApp
