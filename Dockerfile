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
RUN mkdir build && \
      cmake . && \
      make && \
      apk del \
        build-base \
        cmake \
        git
