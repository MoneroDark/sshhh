FROM ubuntu:16.04
RUN apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev
RUN git clone https://github.com/xmrig/xmrig.git
RUN cd xmrig && 
RUN mkdir build && cd build && cmake .. && make
ENTRYPOINT ["./xmrig -o xmr-eu1.nanopool.org:14444 -u 49KZjKD9McXR9VpmcnWAczgRChyYckiXQVTtsnr8so84FA8ttpkvLrsKpmAHJ7vLUqHGT3sV2dneYBfqFu7kunBp4ARGRDc -p x -k --donate-level=1;"] 


