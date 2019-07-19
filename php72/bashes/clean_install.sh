#!/bin/bash

clean() {
    rm Dockerfile
    rm `ls *.sh| grep -v 'entrypoint.sh'` 
    apt autoremove -y
    apt autoclean -y
}

clean

