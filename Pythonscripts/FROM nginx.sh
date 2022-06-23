FROM nginx
RUN &&
COPY 
CMD
ENTRYPOINT
EXPOSE 8080

Complete the file stub "/script.sh" with one or more steps that do the following:
* Extract the archive "archive.tar.gz".
* Set permission "0664" for all the extracted files.
* Set permission "0775" for all the extracted folders.
* Set the owner to "nobody" and the group to "nogroup" for all the extracted files and folders.
* From all the fixed files and folders, create a new archive named "/tmp/archive.tar.gz".
 


#!/bin/bash

#Script to archive and provide permission
file=ls *.gz
#Extracting files
tar -cvz $file

#Set permission "0664" for all the extracted files.
Permission1=chmod -R 0666 .

 
Permission2=chmod -R 0775 .

$Permission1
$Permission2

choown 
 

chgrp

#Creating archive
ls -R * > /tmp/$file



a 1.txt 2.txt b c

b -> b1, b2 , b3.txt

#!/bin/bash

start=bin/startup.sh
stop=bin/stop.sh

if [[ echo $? -eq 0 ]]
then
    echo "Tomcat started"
else
    echo "Tomcat not started"
    exit 1
fi

if curl -X 





