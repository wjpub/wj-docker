#!/bin/bash

openresty_install() {
    echo "import openresty GPG apt-key"
    wget -qO - https://openresty.org/package/pubkey.gpg | apt-key add -
    echo "install add-apt-repository" 
    apt-get -y install software-properties-common
    echo "add openresty org apt-repository"
    add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main"
    echo "apt update"
    apt-get -y update
    echo "install openresty"
    apt-get -y install openresty
    mv /usr/local/openresty/nginx/conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf.bak
    mkdir /usr/local/openresty/nginx/conf/conf.d
    
}

openresty_install
