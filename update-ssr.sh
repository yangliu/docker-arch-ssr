#!/bin/bash

PWD="$(pwd)"

# remove old shadowsocks-rss
[ -d "$PWD/shadowsocks" ] && rm -rf "$PWD/shadowsocks"

# create directory if not existed
[ -d "$PWD/tmp" ] || mkdir -p "$PWD/tmp"

cd $PWD/tmp

# remove old shadowsocks if existed
[ -d "shadowsocks" ] && rm -rf shadowsocks

# checkout the code
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git

# move the single-user verion to root
mv shadowsocks/shadowsocks ../

# remove git repo
rm -rf shadowsocks
