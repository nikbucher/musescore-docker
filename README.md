# MuseScore Docker

This repository contains a Dockerfile for creating a Docker container with MuseScore installed. MuseScore is a popular open-source music notation software. The Docker image is based on the latest Arch Linux image.

## Installation

To build the Docker image, follow these steps:

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/MuseScore-Docker.git
    cd MuseScore-Docker
    ```

2. Build the Docker image:
    ```sh
    docker build -t musescore-docker .
    ```

## Usage

To run MuseScore inside the Docker container, use the following command:

```sh
docker run --rm -it musescore-docker mscore --version
```

## License

This project is licensed under The Unlicense. See the LICENSE file for details.
