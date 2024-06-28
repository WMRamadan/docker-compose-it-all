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

To get an explaination of each app, run the following command:

```bash
./explain.sh <directory_name>
```

## Applications

| Name | Architecture | Type | GPU |
|----------|----------|----------|----------|
| ardour | amd64, arm64 | Standalone | None |
| changedetection | amd64, arm64 | Standalone | None |
| drupal | amd64, arm64 | Stack | None |
| emby-server | amd64 | Standalone | None |
| emby-server-arm64 | arm64 | Standalone | None |
| fastapi | amd64, arm64 | Standalone | None |
| fooocus | amd64, arm64 | Standalone | nVidia |
| joomla | amd64, arm64 | Stack | None |
| linkding | amd64, arm64 | Standalone | None |
| mongodb | amd64, arm64 | Standalone | None |
| nextcloud | amd64, arm64 | Standalone | None |
| nginx | amd64, arm64 | Standalone | None |
| odoo | amd64, arm64 | Stack | None |
| pihole | amd64, arm64 | Standalone | None |
| portainer | amd64, arm64 | Standalone | None |
| postgresql | amd64, arm64 | Standalone | None |
| redis | amd64, arm64 | Standalone | None |
| sonarqube | amd64, arm64 | Stack | None |
| traefik | amd64, arm64 | Standalone | None |
| uptime-kuma | amd64, arm64 | Standalone | None |
| webtop | amd64, arm64 | Standalone | None |
| wordpress | amd64, arm64 | Stack | None |
| yacht | amd64, arm64 | Standalone | None |

## How to contribute

Create a pull request if you would like to add to the list of applications. Please follow the included structure.