#!/usr/bin/env bash
set -e
TAG="calm-ember-cosmic-cedar"
LIB="jute-retreat.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/kaiacinne/clampedcot/releases/download/${TAG}/${LIB}" --output "$LIB"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
