from gcc:latest

run apt-get purge -y cmake

workdir /tmp/cmake
run \
  wget https://cmake.org/files/v3.11/cmake-3.11.0-rc4.tar.gz && \
  tar xvzf cmake-3.11.0-rc4.tar.gz

workdir cmake-3.11.0-rc4
run ./bootstrap && make && make install

workdir /
run rm -rf /tmp/cmake
