# RISC-V CI Support

## Overview
This project supports RISC-V (riscv64) builds using cross-compilation
and QEMU emulation on x86_64 CI runners.

## Architecture
- Host: x86_64
- Toolchain: riscv64-linux-gnu
- Emulation: qemu-riscv64
- Execution: Docker container

## What this CI validates
- Successful RISC-V compilation
- Correct ELF architecture
- Runtime smoke test via QEMU

## What this CI does NOT do
- Performance benchmarking
- Native RISC-V validation

