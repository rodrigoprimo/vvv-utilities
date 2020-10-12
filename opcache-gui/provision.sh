#!/usr/bin/env bash
# Checkout Opcache GUI to provide a dashboard for viewing statistics

noroot mkdir -p /srv/www/default/opcache-gui
echo -e " * Provisioning Opcache GUI"
cd /srv/www/default/opcache-gui
noroot composer require amnuts/opcache-gui

echo " * symlinking index.php"

noroot ln -s ./vendor/amnuts/opcache-gui/index.php ./index.php

echo " * Opcache GUI complete"
