#!/bin/sh/

## if you want to control windows servers, you need to install python winrm library for your python environment
python3 -m pip install --user --ignore-installed pywinrm

## check which python version ansible is using
ansible --version

## if ansible is using python version 2, run this instead
#pip install "pywinrm>=0.2.2"