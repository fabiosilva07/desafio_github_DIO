#!/bin/bash

echo "Instalando o Docker......."

apt-get update -y
apt-get install ca-certificates curl gnupg lsb-release -y
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update -y
apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin nfs-common -y

echo "Configurando e Copiando arquivos para servidor NFS servidor NFS"

mkdir /data

echo "192.168.0.5:/data	/data	nfs	defaults	0  0" >> /etc/fstab

mount -a

mkdir /data/projetodiophp
cp ./index.php /data/projetodiophp
chown -R nobody:nogroup /data/projetodiophp
chmod -R 777 /data/projetodiophp

mkdir /data/projetodioproxy
cp ./nginx.conf /data/projetodioproxy
chown -R nobody:nogroup /data/projetodioproxy
chmod -R 777 /data/projetodioproxy

mkdir /data/projetodiodb
chown -R nobody:nogroup /data/projetodiodb
chmod -R 777 /data/projetodiodb

echo "ATENCAO: EDITAR OS ARQUIVOS NAS PASTAS EM QUAL FORAM COPIADOS COM AS ESPECIFICACOES DOS SEUS SERVIDORES."
echo "ADICIONAR ESTE SERVIDOR A UM CLUSTER SWARM ANTES DE DAR DEPLOY DA APLICACAO"
echo "APÓS REALIZAR ESSE PROCEDIMENTO EXECUTAR"
echo "docker stack deploy -c projetofinaldio.yml projetodio"


