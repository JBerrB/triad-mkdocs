#!/bin/bash

OPTION=$1

cd mkdocs-website

if [ "$OPTION" = "produce" ];
then
   rm -rf output
   docker run -d -v ${PWD}/output:/tmp mkdocs-website produce
else
   if [ "$OPTION" = "serve" ];
      then
         rm -rf input/*
         cd triad-website && tar cfz site.tar.gz * && cd ..
         mv triad-website/site.tar.gz ./input/
         docker run -p 8000:8000 -d -v ${PWD}/input:/tmp mkdocs-website serve
   fi
fi

cd ..
