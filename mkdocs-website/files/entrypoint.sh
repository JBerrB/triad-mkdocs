#!/bin/sh

OPTION=$1

if [ "$OPTION" = "produce" ];
then
   mkdocs build
   cd site; tar cfz /tmp/site.tar.gz *; cd..
else
   if [ "$OPTION" = "serve" ];
      then
         mkdir site
         tar xvfz /tmp/site.tar.gz -C ./site/
         mkdocs serve
   fi
fi
