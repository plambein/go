# Building this container will fetch all needed dependencies.
# Running it will build the binary and execute the tests.

# Start from golang container
FROM golang:1.11

# Fetch code
COPY / go/

# Set the credentials for the mirrored library, fetch it, checkout the fork and completely build it
RUN cd go/src &&\
    ./all.bash

# Set build variables
ENV GOROOT=/go/go PATH=/go/go/bin:$PATH
