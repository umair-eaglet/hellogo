FROM golang

go get github.com/umair-eaglet/hellogo/helloworld

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/umair-eaglet/hellogo/helloworld

# Build the helloworld within the container.
RUN go install github.com/umair-eaglet/hellogo/helloworld

# Document that the service listens on port 8080.
EXPOSE 8080

# Make helloworld entry point to run it upon container start.
ENTRYPOINT /go/bin/helloworld
