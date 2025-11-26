# TP Docker - WordPress & Zabbix

- Dossier `wordpress/` : docker-compose pour WordPress + MySQL
- Dossier `zabbix/` : docker-compose pour Zabbix appliance
- Ainsi qu’un script `install_docker.sh` permettant d’installer Docker sur la machine.

## Script : install_docker.sh

Ce script permet d’installer Docker, Docker Compose, et d’activer le service Docker.

Contenu du script :
set -e
apt update
apt upgrade
apt install curl
apt install ca-certificates
curl https://get.docker.com | bash
apt install docker-compose
systemctl enable --now docker
systemctl start docker
echo "Terminer"

Exécution du script :
chmod +x install_docker.sh
./install_docker.sh

## WordPress + MySQL

Le fichier docker-compose.yml pour WordPress se trouve dans :
wordpress/docker-compose.yml

Lancement :
cd wordpress
docker compose up -d

Accès :
http://IP:8080

## Zabbix (appliance)

Le fichier docker-compose.yml pour Zabbix se trouve dans :
zabbix/docker-compose.yml

Lancement :
cd zabbix
docker compose up -d

Accès :
http://IP:8081

Identifiants par défaut Zabbix :
Admin
zabbix

## Arrêter les services

WordPress :
cd wordpress
docker compose down

Zabbix :
cd zabbix
docker compose down
