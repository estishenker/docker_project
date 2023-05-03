#!/bin/bash

#create image with basic commands and configure git
docker build . -t alpcon

#check if alpcon container is running else start it
docker ps |grep "alpcon" >check_container
if [ -s ./check_container ]
  then
    echo "alpcon is running"
  else
    echo "alpcon not run"
    rm check_container
    #start alpcon and run in it python file
    docker run --rm -it --name alpcon -v /home/devops/docke>
    sleep 10
    #check if alpcon still work
    if [ $(docker ps |grep "alpcon") ]
      then
      echo "failed test"
      docker kill alpcon
    else
      echo "Test successfull"
    fi
fi
