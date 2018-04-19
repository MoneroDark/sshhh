FROM UBUNTU:LATEST
RUN sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev
RUN git clone https://github.com/xmrig/xmrig.git
RUN cd xmrig
RUNmkdir build
RUNcd build
RUN cmake ..
make
WORKDIR    /xmrig
ENTRYPOINT  ["./xmrig"]
