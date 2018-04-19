FROM		ubuntu:latest

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
RUN cd ..
RUN cmake
RUN make
WORKDIR    /xmrig
ENTRYPOINT  ["./xmrig"]
