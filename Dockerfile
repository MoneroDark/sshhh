FROM		ubuntu:xenial

RUN		apt-get update -qq && apt-get install -qqy \
  cmake \
  libuv1-dev \
  git \
  make \
  libmicrohttpd-dev \
  build-essential 

RUN		git clone https://github.com/xmrig/xmrig.git
RUN cd xmrig
RUN mkdir build
RUN cd build
RUN cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
RUN make
WORKDIR    /xmrig
ENTRYPOINT  ["./xmrig"]
