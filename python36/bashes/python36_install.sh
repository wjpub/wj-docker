#!/bin/bash

python36() {
    apt install -y python3 python3-pip
    ln -s /usr/bin/python3 /usr/bin/python
    pip3 install -r python3_pips_required.txt
}

python36

