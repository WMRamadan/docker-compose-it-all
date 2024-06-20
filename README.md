# Docker Compose It All
---

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

| Name | Architecture |
|----------|----------|
| emby-server | amd64 |
| emby-server-arm64 | arm64 |
| fastapi | amd64, arm64 |
| mongodb | amd64, arm64 |
| pihole | amd64, arm64 |
| portainer | amd64, arm64 |
| postgresql | amd64, arm64 |
| redis | amd64, arm64 |
| webtop | amd64, arm64 |
| yacht | amd64, arm64 |

## How to contribute

Create a pull request if you would like to add to the list of applications. Please follow the included structure.