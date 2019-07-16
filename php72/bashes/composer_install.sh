#!/bin/bash

composer_install() {
    echo "exec: curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer ...."
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
    echo "exec: composer global require 'fxp/composer-asset-plugin:^1.2.0' ...."
    composer global require "fxp/composer-asset-plugin:^1.2.0"
    echo "composer install completed ."
}

composer_install
