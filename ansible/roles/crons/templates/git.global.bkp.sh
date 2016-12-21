#!/bin/bash

PYTHON=`which python`

for filename in `find /home/web/ -maxdepth 2 -type f -name 'gitbkp.py'`; do
        echo "Start ${filename} ------>"
        $PYTHON $filename
        echo "Finish ${filename} ------>"
        echo " "
done
