# Docker Compose It All

A repository of docker-compose yaml files for all kinds of deployments based on ready made images.

## Setup

To launch a deployment run the following command:

```bash
./launch.sh <directory_name>
```

To stop a deployment run the following command:

```bash
./stop.sh <directory_name>
```
## Applications

| Name | Architecture | type |
|----------|----------|----------|
| emby-server | amd64 | Standalone |
| emby-server-arm64 | arm64 | Standalone |
| fastapi | amd64, arm64 | Standalone |
| mongodb | amd64, arm64 | Standalone |
| pihole | amd64, arm64 | Standalone |
| portainer | amd64, arm64 | Standalone |
| postgresql | amd64, arm64 | Standalone |
| redis | amd64, arm64 | Standalone |
| sonarqube | amd64, arm64 | Stack |
| webtop | amd64, arm64 | Standalone |
| yacht | amd64, arm64 | Standalone |

## How to contribute

Create a pull request if you would like to add to the list of applications. Please follow the included structure.