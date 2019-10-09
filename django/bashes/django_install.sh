#!/bin/bash

django() {
    apt install -y python3 python3-pip
    ln -s /usr/bin/python3 /usr/bin/python
    ln -s /usr/bin/pip3 /usr/bin/pip
    pip install Django django-haystack elasticsearch kafka-python

}

django

