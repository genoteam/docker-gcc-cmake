from gcc:latest

run apt-get purge -y cmake

workdir /tmp/cmake
run \
  wget https://cmake.org/files/v3.12/cmake-3.12.0-rc3.tar.gz && \
  tar xvzf cmake-3.12.0-rc3.tar.gz

workdir cmake-3.12.0-rc3
run ./bootstrap && make && make install

workdir /
run rm -rf /tmp/cmake
