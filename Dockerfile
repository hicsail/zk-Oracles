FROM ubuntu:latest
WORKDIR /usr/src/app

RUN apt update && apt install -y\
    build-essential\
    pypy3 \
    pypy3-dev\
    pypy3-pip\
    git \
    cmake\
    make\
    libssl-dev\
    bash\
    musl-dev\
    nano\
    wget\
    unzip\
    uuid-dev\
    default-jdk\
    curl\
    && apt upgrade -y

COPY . .

RUN pypy3 -m pip install --no-cache-dir --upgrade -r requirements.txt

RUN pypy3 -m pip install --upgrade pip setuptools

RUN git clone https://github.com/uvm-plaid/picozk.git

RUN cp ./consts/poseidon_hash.py ./picozk/picozk/poseidon_hash/poseidon_hash.py

RUN pypy3 -m pip install picozk/.

RUN mkdir -p irs