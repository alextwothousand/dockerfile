FROM fedora:latest

##
# Run a full system upgrade.
##
RUN \
    yum update -y && \
    yum upgrade -y

##
# Install development tools
##
RUN \
    yum install -y \
    make \
    cmake \
    automake \
    gcc \
    gcc-c++ \
    clang \
    git \
    kernel-devel

##
# Configure workdir.
##
WORKDIR /app

##
# Expose our entrypoint.
##
ENTRYPOINT ["/bin/bash"]