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
    build-essential \
    neofetch \
    cmake

# Install rustup + wasm target
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    && ~/.cargo/bin/rustup target add wasm32-unknown-unknown

# Install wapm and wasmer
RUN curl https://get.wapm.io -sSf | sh \
    && curl https://get.wasmer.io -sSf | sh

ENV PATH=$PATH:/root/.cargo/bin

RUN cargo install onefetch

# Set default shell to bash when container starts
CMD ["/bin/bash"]