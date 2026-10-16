# didarova-medina-devops

DevOps Laboratory Work 1 — Linux, Git, Docker, Jenkins

| | |
|---|---|
| Name | Medina |
| Surname | Didarova |
| Group | IT2-2313 |
| Student ID | 37944 |
| Course | DevOps |

## Structure
```
app/        application (app.sh) and test (test.sh)
scripts/    Didarova_Medina_system.sh
config/     app.conf
logs/       application.log (ignored by git)
backup/     (ignored by git)
Dockerfile, docker-compose.yml, Jenkinsfile
```

## Run
```bash
./scripts/Didarova_Medina_system.sh
docker build -t didarova-medina-devops .
docker run --name didarova-medina-container didarova-medina-devops
docker compose up -d && docker compose down
```
