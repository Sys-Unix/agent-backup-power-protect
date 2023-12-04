#!/bin/bash

# Define o URL para o download
URL="http://gewpsmgapp01.oil.galpenergia.corp/pub/dbappagent1913_linux_x86_64.tar.gz"

# Baixa o arquivo
wget $URL

# Extrai o conteúdo do arquivo tar.gz
tar -xzf dbappagent1913_linux_x86_64.tar.gz

# Executa o script de instalação
./ppdmHanaInstall.sh

# Supondo que o script ppdmHanaInstall.sh requer entrada do usuário (endereço IP)
# Este comando pode precisar ser ajustado dependendo de como o script funciona
echo "10.166.8.50" | ./ppdmHanaInstall.sh

# Mostra informações de rede
ip a
