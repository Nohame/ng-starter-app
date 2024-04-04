
# Angular Project with Docker

This project uses Docker to set up a development environment for an Angular application. It includes a project initialization script, a `docker-compose` configuration to orchestrate necessary services, and a Dockerfile to build the Docker image of the application.

## Prerequisites

- Docker and Docker Compose installed on your machine.
- Basic knowledge of Docker, Docker Compose, and Angular.

## Configuration

### Environment Variables

Create a `.env` file at the root of your project with the following variables:

```env
ANGULAR_HOST=0.0.0.0
ANGULAR_PORT=4200
APP_NAME=angular
NODE_VERSION=20
NETWORK=angular_network
```

You can adjust these values as needed. They will be used by Docker Compose and the shell scripts.

### Dockerfile

The `Dockerfile` sets up the necessary environment to run the Angular application, based on a Node.js Alpine image for minimal footprint.

### docker-compose.yml

The `docker-compose.yml` file defines the service for the Angular application, using environment variables for configuration. It mounts the source code into the container and exposes the necessary port to access the application.

### Shell Scripts

- `init-project.sh`: Script to initialize the Angular project if not already set up. Installs necessary dependencies.
- `docker.sh`: Script to manage the Docker environment (start, stop, restart, SSH access).

## Usage

1. **Project Initialization**: Ensure the `.env` file is set up. Run the `init-project.sh` script to initialize the Angular project.

2. **Starting the Environment**: Use the `docker.sh` script with the `start` argument to start the Docker environment. For example:

```sh
./docker.sh start
```

3. **Accessing the Application**: Open your browser and navigate to `http://localhost:4200` (or another configured port) to see your Angular application in action.

4. **Stopping the Environment**: Use the `docker.sh` script with the `stop` argument to stop all services.

```sh
./docker.sh stop
```

5. **Restarting the Environment**: To restart, use `restart`:

```sh
./docker.sh restart
```

6. **SSH into the Container**: To SSH into the container, use `ssh`:

```sh
./docker.sh ssh
```

## Contributing

Feel free to contribute to the project by submitting pull requests or reporting issues.
