#!/bin/sh
  
OPTION=$1

if [ "$OPTION" = "produce" ];
then
   mkdocs build
   cp mkdocs.yml ./site/
   cd site; tar cfz /tmp/site.tar.gz *; cd ..
else
   if [ "$OPTION" = "serve" ];
      then
         rm -rf ./site
         mkdir site
         tar xfz /tmp/site.tar.gz -C ./site/
         cp ./site/mkdocs.yml .
         mkdocs serve
   fi
fi

