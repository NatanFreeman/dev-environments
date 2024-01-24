FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git \
    make \
    bat \
    ripgrep \
    neovim \
    curl \
    libc6 \
    libc6-dev \
    build-essential

# Install rustup
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Add wasm target
RUN . ~/.cargo/env && rustup target add wasm32-unknown-unknown

# Install wapm and wasmer
RUN curl https://get.wapm.io -sSf | sh \
    && curl https://get.wasmer.io -sSf | sh

# Set default shell to bash when container starts
CMD ["/bin/bash"]