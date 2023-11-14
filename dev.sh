#!/bin/sh


curl https://nim-lang.org/choosenim/init.sh -sSf | sh -s -- -y
export PATH=$HOME/.nimble/bin:$PATH
echo 'export PATH=$HOME/.nimble/bin:$PATH' >> ~/.bashrc

nimble install denim

