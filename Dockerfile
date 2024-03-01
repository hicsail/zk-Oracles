FROM pypy:latest
WORKDIR /usr/src/app

RUN apt update && apt install -y\
    build-essential\
    python3 \
    python3-pip\
    python3-dev\
    python3-numpy\
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

RUN pypy3 -m pip install --upgrade pip setuptools

RUN pypy3 -m pip install -r requirements.txt

RUN git clone https://github.com/uvm-plaid/picozk.git

RUN cp ./consts/poseidon_hash.py ./picozk/picozk/poseidon_hash/poseidon_hash.py

RUN pypy3 -m pip install picozk/.

RUN mkdir -p irs