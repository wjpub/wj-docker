#!/bin/bash

python27_install() {
    apt autoremove python
    apt-get install -y python2.7 python-pip python-opencv python-gdcm
    pip install numpy SimpleITK pydicom chardet
}

python27_install
