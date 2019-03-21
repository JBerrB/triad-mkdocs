#!/bin/bash

OPTION=$1

if [ "$OPTION" = "produce" ];
then
   rm -rf output
   docker run -d -v ${PWD}/output:/tmp mkdocs produce
else
   if [ "$OPTION" = "serve" ];
   then
      mkdir -p input && rm -rf input/*
      cd triad-website && rm -rf site.tar.gz && tar cfz site.tar.gz * && cd ..
      mv triad-website/site.tar.gz ./input/
      docker run -p 8000:8000 -d -v ${PWD}/input:/tmp mkdocs serve
   else
      if [ "$OPTION" = "stop" ];
      then
         export CONTAINER_ID=$(docker ps | grep mkdocs | awk '{print $1}')
         docker stop $CONTAINER_ID
      fi
   fi
fi
