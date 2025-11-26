set -e
apt update 
apt upgrade
apt install curl
apt install ca-certificates
curl  https://get.docker.com | bash
apt install docker-compose
systemctl enable --now docker
systemctl start docker
echo â"Terminer "
