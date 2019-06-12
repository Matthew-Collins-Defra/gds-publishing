# gds-publishing

Collection of scripts and docker files for running the gds publishing platform locally without virtualbox

For these scripts to work, the GDS repositories should be cloned into `../publishing/` (i.e. into a sibling of this repository). Use `clone-repos.sh` to do this automatically.

User `docker-compose up` to run the full stack. Once everything is running, execute `./post-start.sh` to create database schemas and populate with initial data.
