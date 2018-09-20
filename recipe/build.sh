#!/bin/bash

./configure --prefix=$PREFIX \
            --with-curl=$PREFIX \
            --with-libxml=$PREFIX \
            --with-pcre=$PREFIX \
            --with-geoip=$PREFIX \
            --with-yajl=$PREFIX

make

make install