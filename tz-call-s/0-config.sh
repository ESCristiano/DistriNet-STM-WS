#!/usr/bin/env bash

rm -r ./build
rm -r ./src/NonSecure/build/
rm -r ./src/Secure/build/
cmake -G "Eclipse CDT4 - Unix Makefiles" ./src -B ./build/