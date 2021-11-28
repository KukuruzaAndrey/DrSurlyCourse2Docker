#!/bin/bash

docker build -t throwtheswitch/drsurly-course2:latest --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -f build/release/Dockerfile .