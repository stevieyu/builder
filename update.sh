#!/bin/sh

# git submodule update --rebase --remote --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull