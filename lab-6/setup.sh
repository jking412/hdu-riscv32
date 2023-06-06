#!/usr/bin/env bash

path=$(pwd)

cat << EOF >> ~/.bashrc
export PATH="$path:\$PATH"
export PATH="${path}/riscv/bin:\$PATH"
alias gccrv32="riscv32-unknown-elf-gcc"
alias dumprv32="riscv32-unknown-elf-objdump"
alias runrv32="qemu-riscv32"
EOF
curl -L -o riscv-gnu-toolchain.tar.gz https://github.com/riscv-collab/riscv-gnu-toolchain/releases/download/2023.06.02/riscv32-elf-ubuntu-22.04-nightly-2023.06.02-nightly.tar.gz
tar -xvf riscv-gnu-toolchain.tar.gz

