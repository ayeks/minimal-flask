# minimal-flask

Minimal flask app that can be used to test cicd pipelines.

## Build and run

Checkout the [Makefile](./Makefile) for how to run this this.

### Build and run locally

Create virtualenv: `python -m virtualenv .venv`

Source the venv and install the requirements with: `make install-local`

Run flask app locally: `make run-local` or `flask run`

### Build and run a container

Build the container with `make build-docker` or `docker build -t flask`

Run the container with `make run-docker` or `docker run -it --rm -p 5000:5000  flask`

Access the site at port <http://localhost:5000>.

