# Ubuntu 18.04 LTS (Bionic)

[![Build Status](https://travis-ci.org/strongbrent/docker-ubuntu1804-testuser.svg?branch=master)](https://travis-ci.org/strongbrent/docker-ubuntu1804-testuser) [![Docker Automated build](https://img.shields.io/docker/cloud/automated/strongbrent/docker-ubuntu1804-testuser.svg)](https://cloud.docker.com/repository/docker/strongbrent/docker-ubuntu1804-testuser) [![Docker Automated build](https://img.shields.io/docker/cloud/build/strongbrent/docker-ubuntu1804-testuser.svg)](https://cloud.docker.com/repository/docker/strongbrent/docker-ubuntu1804-testuser/builds)

## Background
Stock Ubuntu 18.04 (Bionic) LTS Docker image with a default user for automation testing.

## How to Build this Image

This image is built automatically on Docker Hub any time a commit is made or code is merged to the `master` branch. However, if you need to need to manually build an image, execute the following:
```
make image
```

## How to Run this Container

To run a container from this image, run this command:
```
make run
```

## Disclaimer 

This image is used to test build automation scripts. It is most definitely not suitable nor secure enough to run in any production environment.