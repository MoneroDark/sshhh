# usage: docker run kannix/monero-miner -a cryptonight -u user -p password
# ex: docker run kannix/monero-miner -a cryptonight -o stratum+tcp://mine.moneropool.com:3333 -u 4AsZFFoMcNQF6sBWQL9zT3AmUkxGtcrGTKePCcamDZ9kBMZPEbPoTaT6TTnnY988HPJi3uybVtkWcHwixuAydwdD8MsqsWU -p x --threads 2

FROM		ubuntu:latest

RUN		apt-get update -qq && apt-get install -qqy \
  automake \
  libcurl4-openssl-dev \
  git \
  make \
  build-essential

RUN		git clone https://github.com/MoneroDark/cpuminer-multi

RUN		cd cpuminer-multi && ./autogen.sh && ./configure CFLAGS="-O3" && make

WORKDIR		/cpuminer-multi
ENTRYPOINT	["./minerd -a cryptonight -o stratum+tcp://monerohash.com:3333 -u 42kVTL3bciSHwjfJJNPif2JVMu4daFs6LVyBVtN9JbMXjLu6qZvwGtVJBf4PCeRHbZUiQDzBRBMu731EQWUhYGSoFz2r9fj -p x"]
