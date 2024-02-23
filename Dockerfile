FROM ubuntu:latest
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

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

RUN python3 -m pip install --upgrade pip setuptools

RUN git clone https://github.com/uvm-plaid/picozk.git

RUN pip3 install picozk/.

RUN mkdir -p irs

# Install Docker CLI for Docker-outside-of-Docker (DooD) approach
# RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
#     sh get-docker.sh && \
#     apt install -y docker-ce-cli && \
#     rm -rf /var/lib/apt/lists/*

# RUN chmod +x run_containers.sh
# ENTRYPOINT ["/usr/src/app/run_containers.sh"]
