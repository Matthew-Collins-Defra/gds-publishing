# GDS Publishing

Scripts and Docker files for running the GDS publishing platform as containers without VirtualBox.

## Pre-requisites

A range of GDS repositories are required to be in `../publishing` (relative to this project's root).

```
# Clone all GDS repos to the required location
./clone-repos.sh
```

## Usage

```
# Start all services
docker-compose up

# Initialise databases (only required on first start)
./post-start.sh
```
