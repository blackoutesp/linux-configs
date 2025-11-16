#!/bin/bash

dir='/home/ubuntu/John-5_God-Told-Me-To'
ffmpeg='/usr/bin/ffmpeg'

if [ ! -d $dir ]; then

        echo "No existe el directorio. Saliendo..."
        exit 1

else
        cd $dir
        echo "quitando espacios en los nombres... "
        find . -type f -exec rename 's/ //g' {} \;
        
        for i in *; do
                $ffmpeg -i $i http://127.0.0.1:8090/${i}.ffm
        done
fi


exit 0
