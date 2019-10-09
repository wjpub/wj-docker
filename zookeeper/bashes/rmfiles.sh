#!/bin/bash

rmfiles() {
    rm Dockerfile
    rm *.tgz
    rm *_install.sh
    rm rmfiles.sh
}

rmfiles
