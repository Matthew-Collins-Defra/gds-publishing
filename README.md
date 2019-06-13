# gds-publishing

Collection of scripts and docker files for running the gds publishing platform locally without virtualbox

For these scripts to work, the GDS repositories should be cloned into `../publishing/` (i.e. into a sibling of this repository). Use `clone-repos.sh` to do this automatically.

## Usage

```
# Start all services
docker-compose up

# Initialise databases (only required on first start)
./post-start.sh
```
