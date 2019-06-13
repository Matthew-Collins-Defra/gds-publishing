# GDS Publishing

Scripts and Docker files for running the GDS publishing platform as containers without VirtualBox.

## Setup

This project depends on a number of GDS repositories which are cloned into `./gds-services` by the setup script.

Databases must be initialised after starting services for the first time or after destroying the Docker volumes.

```
# Prepare the local repository
scripts/setup.sh

# Start all services
docker-compose up

# Initialise data stores
scripts/post-start.sh
```

## Usage

Use `docker-compose` to start, stop and interact with services.

For example:

```
# Start all services
docker-compose up

# Stop all services
docker-compose down

# Stop services and remove volumes (to reset all data stores)
docker-compose down --volumes
```
