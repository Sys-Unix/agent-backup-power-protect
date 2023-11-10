# Script de Validação e Configuração

Este script realiza uma série de verificações de rede e instalações em um ambiente Linux. Ele é projetado para engenheiros DevOps e Cloud Engineers que precisam automatizar a validação de conexões de rede e a instalação de pacotes específicos.

## Funcionalidades

O script executa as seguintes tarefas:

1. **Verificações de DNS** usando `nslookup` para os servidores `gewpppdm02` e `gewpddve01`.
2. **Testes de Conexão** com `telnet` nos servidores `gewpppdm02` e `gewpddve01` em várias portas.
3. **Download e Instalação** de um pacote específico (neste caso, `fsagent1913_linux_x86_64.tar.gz`).
4. **Verificação do Serviço** `agentsvc.service`.
5. **Execução de Script de Configuração Adicional**.
6. **Exibição de Informações de Rede**.

## Pré-requisitos

Para rodar este script, seu sistema precisa ter:

- `bash`
- `nslookup`
- `telnet`
- `wget`

## Uso

Para usar este script, siga estas etapas:

1. Dê permissão de execução ao script:
chmod +x nome_do_script.sh

2. Execute o script:
./nome_do_script.sh

## Notas Importantes

- Certifique-se de que você tem permissões adequadas para realizar operações de rede e instalação de software.
- O script deve ser executado como root ou com privilégios suficientes para instalar software e alterar configurações de rede.
