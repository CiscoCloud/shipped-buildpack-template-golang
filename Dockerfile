#Base Image for Golang Project
    FROM golang:1.5
    #Port Number to expose from docker container to host server
    EXPOSE 8888
    #Working directory path where your code exists
    WORKDIR /go/src/app
    #Copy source from host machine to docker container
    COPY . /go/src/app
    #Adding permission to access .shipped folder
    RUN chmod a+x .shipped/build .shipped/run .shipped/test
    #provide your build/run commands
    RUN [".shipped/build"]
    CMD .shipped/run
