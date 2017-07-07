#!/bin/bash
#
# Install clang-format 
# 

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then 
	sudo add-apt-repository 'deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.9 main'
	wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | sudo apt-key add -
	sudo apt-get update -qq 
	sudo apt-get install -qq -y clang-format-3.9
fi;

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
	brew install clang-format
fi;
