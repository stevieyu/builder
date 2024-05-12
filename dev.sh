#!/bin/sh


# curl https://nim-lang.org/choosenim/init.sh -sSf | sh -s -- -y
# export PATH=$HOME/.nimble/bin:$PATH
# echo 'export PATH=$HOME/.nimble/bin:$PATH' >> ~/.bashrc

# nimble install denim





######################################################################################################

sudo apt install -y python3 cmake
curl -kL https://github.com/emscripten-core/emsdk/archive/refs/heads/main.tar.gz | tar -vxz -C /workspace

source "/workspace/emsdk-main/emsdk_env.sh"
echo 'source "/workspace/emsdk-main/emsdk_env.sh"' >> $HOME/.bash_profile

# 有 source 应该不需要下面
# export EMSDK_HOME=/workspace/emsdk-main
# export PATH=$EMSDK_HOME:$EMSDK_HOME/upstream/emscripten:$PATH

emsdk install 3.1.26 && emsdk activate 3.1.26

emcmake cmake -B build/wasm
cmake --build build/wasm




# curl -kL https://github.com/WebAssembly/wabt/releases/download/1.0.34/wabt-1.0.34-ubuntu.tar.gz | tar -vxz -C /workspace
# export PATH=/workspace/wabt-1.0.34/bin:$PATH

# wasm-strip bin/release-static/vvdecapp.wasm

# curl -kL https://github.com/WebAssembly/binaryen/releases/download/version_117/binaryen-version_117-x86_64-linux.tar.gz | tar -vxz -C /workspace
# export PATH=/workspace/binaryen-version_117/bin:$PATH

# wasm-opt -Os -o output.wasm bin/release-static/vvdecapp.wasm


