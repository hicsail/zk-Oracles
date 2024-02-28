# zk-Oracles

Welcome to the zk-Oracles repository, a project supported by DARPA focused on zero-knowledge-proof technology within the SIEVE IR0+ framework. 

This repository is a collection of four key modules, each designed to implement possible applications of Zero-Knowledge Proofs in various domains.

## 📚 Modules Overview

Each module is a standalone project, published as a Docker image for ease of use and deployment. Below you'll find a brief overview and links to their respective GitHub repositories for more detailed information.

- **zk-NLP** - Natural Language Processing with Zero-Knowledge Proofs. [GitHub Repository](https://github.com/hicsail/zk-NLP)
- **zk-ApplePSI** - Apple PSI implementation with Zero-Knowledge Proofs. [GitHub Repository](https://github.com/hicsail/zk-ApplePSI)
- **zk-copyright** - Copyright court case using Zero-Knowledge Proofs. [GitHub Repository](https://github.com/hicsail/zk-copyright)
- **zk-DP** - Differential Privacy implementations on census data with Zero-Knowledge Proofs. [GitHub Repository](https://github.com/hicsail/zk-DP)

For detailed information about each project, please refer to the individual repository and its README.

## 🚀 Getting Started

### 📦 Running Docker Images Individually

To get each Docker image up and running, execute the following commands in your terminal:

```
docker run --platform linux/amd64 -it hicsail/zk-nlp:main      
docker run --platform linux/amd64 -it hicsail/zk-apple-psi:main
docker run --platform linux/amd64 -it hicsail/zk-copyright:main
docker run --platform linux/amd64 -it hicsail/zk-dp:main
```

### 🛠 Running All Images Simultaneously
If you prefer to launch all Docker images at once, you can use docker-compose with the following command:

Clone the repo:
```
git clone https://github.com/hicsail/zk-Oracles.git
```

Docker Compose:
```
docker-compose up -d --build
```

This command will build and start all containers defined in the docker-compose.yml file, running them in detached mode.

For any issues or further instructions, please consult the README files within each module's repository. 
