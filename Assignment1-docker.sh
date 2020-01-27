#!/bin/sh

docker build -t assignment1 .

#docker run -it --entrypoint=/bin/bash -v ~/scrapperapp:/scrapperapp assignment1

#there is an error I will resolved later it is kind of not synchronizing with layers

docker run -it -v ~/scrapperapp:/scrapperapp --name containers assignment1

#docker inspect containers