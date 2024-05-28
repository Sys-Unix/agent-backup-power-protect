#!/bin/bash

# Restart Agent
systemctl restart agentsvc.service

# Capturando o status do serviço agentsvc e salvando em um arquivo
systemctl status agentsvc.service > /tmp/agentsvc_status.txt

# Definindo o diretório de destino
HOSTNAME=$(hostname)
DATE=$(date +%Y-%m-%d)
DEST_DIR="/tmp/$HOSTNAME-$DATE-logs"

# Criando o diretório de destino se não existir
mkdir -p $DEST_DIR

# Compactar e mover logs do agentsvc
tar -czvf $DEST_DIR/$HOSTNAME-agentsvc-$DATE-logs.tar.gz /opt/dpsapps/agentsvc/logs

# Compactar e mover logs do fsagent (logs)
tar -czvf $DEST_DIR/$HOSTNAME-fsagent-logs-$DATE-logs.tar.gz /opt/dpsapps/fsagent/logs

# Compactar e mover logs do fsagent (lockbox)
tar -czvf $DEST_DIR/$HOSTNAME-fsagent-lockbox-$DATE-lockbox.tar.gz /opt/dpsapps/fsagent/lockbox

# Movendo o arquivo de status para o diretório final
mv /tmp/agentsvc_status.txt $DEST_DIR/

echo "Arquivos de log e status do serviço compactados e movidos para $DEST_DIR"
