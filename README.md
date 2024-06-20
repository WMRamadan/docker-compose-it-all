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
| emby-server | amd64 | Single |
| emby-server-arm64 | arm64 | Single |
| fastapi | amd64, arm64 | Single |
| mongodb | amd64, arm64 | Single |
| pihole | amd64, arm64 | Single |
| portainer | amd64, arm64 | Single |
| postgresql | amd64, arm64 | Single |
| redis | amd64, arm64 | Single |
| sonarqube | amd64, arm64 | Stack |
| webtop | amd64, arm64 | Single |
| yacht | amd64, arm64 | Single |

## How to contribute

Create a pull request if you would like to add to the list of applications. Please follow the included structure.