# diffmerge
diffmerge ubuntu12 docker

execute:  
xhost +local:docker && docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e 'DISPLAY=:0' albertalvarezbruned/diffmerge  
 - You can add a volume to work with files  
 
