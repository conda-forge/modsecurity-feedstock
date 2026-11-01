#!/bin/bash
set -euxo pipefail

./configure --prefix=$PREFIX \
            --with-curl=$PREFIX \
            --with-libxml=$PREFIX \
            --with-pcre2=$PREFIX \
            --with-geoip=$PREFIX \
            --with-yajl=$PREFIX

make -j"${CPU_COUNT}"
make check -j"${CPU_COUNT}"
make install