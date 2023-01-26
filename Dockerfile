
# Use the official golang image as the base image
FROM golang:latest

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY . .


# Build the Go application
RUN go build -o main .
EXPOSE 80

# Run the binary when the container starts
CMD ["./main"]
