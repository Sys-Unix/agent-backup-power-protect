# Script de Configuração e Verificação de Rede

Este script Bash é utilizado para realizar uma série de verificações de rede e instalações em um sistema Linux. As operações incluem verificações de nslookup e telnet, download e instalação de um pacote, e configuração de um serviço.

## Requisitos

- Sistema operacional baseado em Linux.
- Permissões de administrador para execução de comandos específicos.

## Uso

1. Baixe o script para o seu sistema Linux.
2. Torne-o executável com o comando `chmod +x <nome_do_script>.sh`.
3. Execute o script com `./<nome_do_script>.sh`.

## Funcionalidades

O script executa as seguintes tarefas:

1. **Verificação de nslookup**: Verifica a resolução de nomes de domínio usando `nslookup`.
2. **Verificação de telnet**: Testa a conexão telnet para servidores e portas específicos.
3. **Download e instalação**: Baixa e instala um pacote específico (`fsagent1913_linux_x86_64.tar.gz`).
4. **Configuração de serviço**: Realiza configurações adicionais e verifica o status de um serviço (`agentsvc.service`).

## Detalhamento das Funções

- `exit_on_error`: Exibe uma mensagem de erro e termina a execução do script com um código de erro.
- `check_nslookup`: Realiza uma verificação nslookup para um domínio fornecido.
- `check_telnet`: Testa a conexão telnet para um endereço IP e porta fornecidos.
- `wget` e `tar`: Baixa e extrai o pacote `fsagent1913_linux_x86_64.tar.gz`.
- `systemctl status`: Verifica o status do serviço `agentsvc.service`.
- `configfw.sh`: Executa um script de configuração adicional.

## Saída Esperada

O script informa o usuário sobre o progresso das operações. Em caso de sucesso, todas as etapas são concluídas sem erros, e as informações de rede são exibidas no final.
