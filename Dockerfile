# Use the official Go image as the base image
FROM golang:1.16

# Set the working directory for the container
WORKDIR /app

# Copy the application's source code into the container
COPY src .

# Build the application inside the container
RUN go build -o myapp

# Expose the port that the application will listen on
EXPOSE 80

# Specify the command to run when the container starts
CMD ["./myapp"]

