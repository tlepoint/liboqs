#!/bin/bash
#
# Install libsodium on Linux
# 

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then 
	wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.12.tar.gz
	tar xzf libsodium-1.0.12.tar.gz
	cd libsodium-1.0.12
	./configure
	make
	sudo make install
	cd ..
fi;

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
	brew install libsodium
fi;
