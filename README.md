# NS-3 Docker Container

[![Build and Publish Docker Image](https://github.com/git-fossee/ns3-docker/actions/workflows/docker-build.yml/badge.svg)](https://github.com/git-fossee/ns3-docker/actions/workflows/docker-build.yml)
[![Docker Image Size](https://img.shields.io/docker/image-size/git-fossee/ns3-container?logo=docker)](https://github.com/git-fossee/ns3-docker/pkgs/container/ns3-container)

This Docker container provides a ready-to-use Network Simulator 3 (ns-3.38) environment with a browser-accessible desktop via Kasm Workspaces.

## Features

- Pre-installed ns-3.38 with all dependencies
- NetAnim visualizer
- Full Ubuntu desktop accessible via web browser
- Development tools including g++, cmake, git, etc.
- CI/CD pipeline for automatic builds and security scanning

## Usage

### Pulling the Pre-built Image

```bash
# Pull the latest image from GitHub Container Registry
docker pull ghcr.io/git-fossee/ns3-container:latest
```

### Building the Container Locally

```bash
# Build the container
docker build -t ns3-container -f Dockerfile.ns3 .
```

### Running the Container

```bash
# Using the pre-built image
docker run --rm -it -p 6901:6901 ghcr.io/git-fossee/ns3-container:latest

# Or using a locally built image
docker run --rm -it -p 6901:6901 ns3-container
```

Then open a web browser and navigate to:
```
https://localhost:6901
```

Default credentials:
- Username: `kasm_user`
- Password: `password`

### Using NS-3

Once inside the container, you can use the `ns3` command to run ns-3:

```bash
# Run an example
ns3 run hello-simulator

# Build with debugging
ns3 build --enable-examples --enable-tests

# See ns3 help
ns3 --help
```

NS-3 is located at `/home/kasm-user/ns-allinone-3.38/ns-3.38/`

### Environment Configuration

The container automatically sets up the following environment variables in `.bashrc`:
```bash
export PATH=$HOME/ns-allinone-3.38/bin:$PATH
export LD_LIBRARY_PATH=$HOME/ns-allinone-3.38/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$HOME/ns-allinone-3.38/lib/python3.8/site-packages:$PYTHONPATH
```

## Build Options

This repository provides an NS-3 Docker environment:

1. **Dockerfile.ns3** - Uses direct NS-3 commands for building

## NS-3 Features Included

This container includes:

- Core NS-3.38 simulation environment
- NetAnim for network visualization
- Examples and test suites enabled
- Support for common network protocols and technologies:
  - Wi-Fi
  - LTE
  - TCP/IP
  - 5G
  - IoT
  - And more!

## CI/CD Pipeline

This repository includes an automated GitHub Actions workflow that:

1. Builds the Docker image on every push and pull request
2. Runs Hadolint to check Dockerfile best practices
3. Scans for vulnerabilities using Trivy
4. Publishes the image to GitHub Container Registry (on main branch)
5. Creates versioned tags for releases

## Documentation

For more information about NS-3, visit:
- [NS-3 Official Website](https://www.nsnam.org/)
- [NS-3 Documentation](https://www.nsnam.org/documentation/)
- [NS-3 Tutorials](https://www.nsnam.org/docs/tutorial/html/)
- [NS-3 Manual](https://www.nsnam.org/docs/manual/html/) 