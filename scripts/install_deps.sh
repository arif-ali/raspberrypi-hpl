#!/bin/bash

sudo apt update
sudo apt -y upgrade

dep_pkgs="gcc g++ gfortran make"

sudo apt -y install ${dep_pkgs}

