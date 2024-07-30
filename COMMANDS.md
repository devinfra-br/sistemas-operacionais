# Comandos básicos do Linux
### Índice
1.  [man](#man)
2.  [help](#help)
3.  [info](#info)
4.  [ls](#ls)
5.  [grep](#grep)
6.  [cd](#cd)
7.  [cat](#cat)
8.  [cp](#cp)
9.  [mv](#mv)
10. [pwd](#pwd)
11. [rm](#rm)
12. [mkdir](#mkdir) 
13. [touch](#touch) 
14. [sudo](#sudo)
15. [useradd](#useradd)  
16. [groupadd](#groupadd)  
17. [wc](#wc)  
18. [ip](#wc)  


<div id='man'/>

### Comando `man`
O comando `man` exibe o manual de usuário de um comando.

**Sintaxe básica:**
```sh
$ man ls
```
O comando abrirá a página do manual para o comando ls, mostrando uma descrição detalhada do comando, suas opções e exemplos de uso.

<div id='help'/>

### Comando `--help`
A maioria dos comandos no Linux tem uma opção `--help` que fornece um resumo rápido de suas opções e uso.

**Sintaxe básica:**
```sh
$ ls --help
```
Este comando exibirá uma lista de todas as opções disponíveis para o comando ls.

<div id='info'/>

###  Comando `info`
O comando `info` é semelhante ao `man`, mas frequentemente fornece informações mais detalhadas e estruturadas. 

 **Sintaxe básica:**
```sh
$ info ls
```

<div id='ls'/>

### Comando `ls`

O comando `ls` é utilizado para listar arquivos e diretórios no Linux. É um dos comandos mais básicos e úteis para navegar e explorar o sistema de arquivos.

**Sintaxe básica:**
```sh
$ ls [opções] [caminho]
```

**Opções comuns:**
- `-l`: Exibe a lista em formato detalhado, mostrando permissões, proprietário, grupo, tamanho, data e hora de modificação, e o nome do arquivo ou diretório.
    
	```sh
	$ ls -l
	```   
	
-   `-a`: Mostra todos os arquivos, incluindo arquivos ocultos (aqueles que começam com um ponto `.`).  

	```sh
	$ ls -a
	```  
	  
-   `-h`: Exibe tamanhos de arquivos em um formato legível para humanos (por exemplo, K, M, G para kilobytes, megabytes e gigabytes).
    
	```sh
	$ ls -lh 
	``` 
	   
-   `-R`: Lista diretórios recursivamente, ou seja, inclui os conteúdos de todos os subdiretórios.
    
	```sh
	$ ls -R
	```

<div id='grep'/>

### Comando `grep`
O comando `grep` é utilizado para pesquisar texto dentro de arquivos. Ele é extremamente poderoso para encontrar linhas que correspondem a um padrão específico.

**Sintaxe básica:**
```sh    
$ grep [opções] padrão [arquivo]
```
    
**Opções comuns:**
-  `^d`: Procura linhas que começam com a letra `d`. No contexto do comando `ls -l`, isso é útil para filtrar diretórios, já que suas permissões começam com `d`.
   
	```sh 
	$ ls -l / | grep ^d
	``` 

-   `-i`: Ignora a diferença entre maiúsculas e minúsculas durante a busca.
        
	```sh 
	$ grep -i "padrão" arquivo.txt
	``` 
        
-   `-r`: Pesquisa recursivamente em todos os arquivos de um diretório.
        
	```sh 
	$ grep -r "padrão" /caminho/do/diretorio
	``` 
        
-   `-n`: Exibe o número da linha onde cada correspondência foi encontrada.
        
	```sh 
	$ grep -n "padrão" arquivo.txt
	```
_________________	 
> O objetivo do pipe (`|`) entre os comandos no Linux é permitir a passagem da saída de um comando como entrada para outro comando. Isso é útil para combinar comandos de forma eficiente e realizar operações complexas com uma única linha de comando.

<div id='cd'/>
	
### Comando `cd`

O comando `cd` (change directory) é utilizado para navegar entre diretórios no sistema de arquivos do Linux.

**Sintaxe básica:**
```sh 
$ cd [caminho]
```
**Exemplos**

-   Navegar para o diretório `/usr`:
	```sh    
	$ cd /usr
	```
    
-   Navegar para o diretório home do usuário:
    
	```sh    
	$ cd ~
	```
    
-   Voltar ao diretório anterior:
    
	```sh    
	$ cd -
	```
    
-   Navegar um nível acima na hierarquia de diretórios:
    
	```sh    
	$ cd ..
	```

<div id='cat'/>

### Comando `cat`

O comando `cat` é utilizado para concatenar arquivos e exibir seu conteúdo no terminal. Além disso, ele pode ser usado para criar novos arquivos e também para combinar o conteúdo de arquivos.

**Sintaxe básica:**
```sh
$ cat nome_do_arquivo
```

<div id='cp'/>

### Comando `cp`

O comando `cp` é utilizado para copiar arquivos e diretórios de um local para outro.

**Sintaxe:**
```sh
$ cat nome_do_arquivo
```
    
**Opções comuns:**

- `-r`: Copia recursivamente diretórios e seu conteúdo.
	```sh
	$ cp -r [diretorio_origem] [diretorio_destino]
	```

<div id='mv'/>

### Comando `mv`

O comando `mv` é utilizado para mover arquivos e diretórios de um local para outro. Ele também pode ser usado para renomear arquivos.

**Sintaxe básica:**
```sh
$ mv [caminho_origem] [caminho_destino]
```    
**Opções comuns:**
    
- `-i`: Solicita confirmação antes de sobrescrever um arquivo existente.
        
	```sh
	$ mv -i [arquivo_origem] [diretorio_destino]
	```   

<div id='pwd'/>

### Comando `pwd`

O comando `pwd` (print working directory) é utilizado para imprimir o diretório atual em que você está trabalhando no terminal.

**Sintaxe básica:**
```sh
$ pwd
```

<div id='rm'/>

### Comando `rm`

O comando `rm` é utilizado para remover arquivos ou diretórios no Linux.

**Sintaxe básica:**

```sh
$ rm [nome_do_arquivo]
```
 
**Opções comuns:**

- `-r`: Remove diretórios e seu conteúdo de forma recursiva.

	```sh
	$ rm -r [nome_do_diretorio]
	```  

<div id='mkdir'/>
	
### Comando `mkdir`

O comando `mkdir` é utilizado para criar diretórios no Linux.


**Sintaxe básica:**
```sh
$ mkdir [nome_do_diretorio]
```
 
**Opções comuns:**
- `-p`: Cria diretórios pais necessários, se eles não existirem.

	```sh
	$ mkdir -p caminho/do/novo/diretorio
	```  

<div id='touch'/>

### Comando `touch`

O comando `touch` é utilizado para criar arquivos vazios ou atualizar o timestamp de acesso e modificação de um arquivo existente.

**Sintaxe básica:**
```sh
$ touch [nome_do_arquivo]
``` 

<div id='sudo'/>

### Comando `sudo`
O comando `sudo` é uma ferramenta poderosa no Linux que permite aos usuários executarem comandos com privilégios de superusuário (root) ou outros privilégios específicos. Ele é fundamental para a administração de sistemas, proporcionando uma maneira segura e controlada de conceder acesso a comandos administrativos. Aqui está uma explicação detalhada sobre o comando `sudo`, suas opções e boas práticas de uso:

#### Sintaxe básica:
```ssh
$ sudo [opções] comando
```
**Opções comuns:**

**-u, --user**: Especifica o usuário a ser utilizado ao executar o comando. Útil para executar comandos como outro usuário.
```ssh
$ sudo -u nome_do_usuario comando
```
**-s, --shell**: Abre um shell de login como root. Útil para iniciar um shell com privilégios de root.
```ssh
$ sudo -s
```
**-i, --login**: Inicia um shell de login como root. É equivalente a `sudo su -`.
```ssh
$ sudo -i
```
**-k**: Faz com que o `sudo` solicite a senha novamente, sem executar um comando.
```ssh
$ sudo -k
```
**-E**: Preserva o ambiente do usuário, incluindo variáveis de ambiente. Útil quando você precisa manter o ambiente do usuário ao executar comandos como root.
```ssh
$ sudo -E comando
```
#### Boas práticas:

-   **Limitar o Uso do `sudo`**: Configure os arquivos `/etc/sudoers` e `/etc/sudoers.d/` para limitar quais usuários e grupos podem usar `sudo` e quais comandos eles podem executar. Use `visudo` para editar esses arquivos com segurança.
    
 **Exemplo de configuração**:
```ssh
username ALL=(ALL) NOPASSWD: ALL
```
-   **Uso de `sudo` para Segurança**: Use `sudo` para minimizar os riscos de segurança, executando apenas os comandos necessários com privilégios elevados.
    
-   **Verificar logs**: Verifique os logs do `sudo` em `/var/log/auth.log` ou `/var/log/secure` para monitorar e auditar o uso de `sudo`.

#### Exemplo de configuração com `visudo`:

 **Abrir o sditor para editar o sudoers**
    
```ssh
$ sudo visudo
```
**Adicionar uma regra para permitir um usuário específico executar comandos sem senha**
```ssh
username ALL=(ALL) NOPASSWD: /usr/bin/apt, /usr/bin/yum
```

> O comando `sudo` é uma ferramenta essencial para a administração de sistemas Linux, permitindo executar comandos com privilégios elevados de forma segura. Ao utilizar `sudo`, você pode manter o controle e a segurança do sistema, limitando o acesso a comandos sensíveis e monitorando suas atividades. Sempre use `sudo` com cuidado e siga as melhores práticas de segurança.

<div id='useradd'/>


### Comando `useradd`

O comando `useradd` é usado para criar uma nova conta de usuário no sistema. Normalmente, é executado com privilégios de superusuário (`root`) para modificar arquivos de sistema e configurar corretamente a nova conta de usuário.

#### Sintaxe básica:

```ssh
$ sudo useradd [opções] nome_do_usuario
```
**Opções comuns:**

-   **-m, --create-home**: Cria o diretório home do usuário se ele não existir. Se esta opção não for especificada, o diretório home não será criado automaticamente.
    
```ssh 
$ sudo useradd -m usuario1
``` 
    
-   **-s, --shell**: Especifica o shell padrão para o usuário. O shell define o ambiente de linha de comando do usuário ao fazer login. Por padrão, é `/bin/bash`.
    
```ssh 
$ sudo useradd -s /bin/zsh usuario2
```
    
-   **-u, --uid**: Especifica o UID (User ID) numérico para o novo usuário. Se não for especificado, o próximo UID disponível será atribuído automaticamente.
    
```ssh 
$ sudo useradd -u 2001 usuario3
```
    
-   **-g, --gid**: Especifica o GID (Group ID) primário para o novo usuário. Se não for especificado, o GID será o mesmo que o UID ou será determinado automaticamente.
    
```ssh 
$ sudo useradd -g grupo1 usuario4
``` 
    
-   **-G, --groups**: Especifica grupos suplementares aos quais o usuário deve pertencer. Os grupos são separados por vírgulas e sem espaços.
    
```ssh 
$ sudo useradd -G grupo1,grupo2 usuario5
``` 
    
-   **-d, --home**: Especifica o diretório home do usuário. É onde os arquivos pessoais do usuário são armazenados por padrão.
```ssh
$ sudo useradd -d /home/novodiretorio usuario6
```
    
-   **-p, --password**: Permite definir a senha do usuário diretamente na linha de comando. No entanto, não é recomendado devido a questões de segurança.
    
```ssh 
$ sudo useradd -p 'senha_criptografada' usuario7
```
#### Observações importantes:

-   **Segurança**: É crucial usar senhas seguras e não especificá-las diretamente na linha de comando (`-p`) devido a questões de segurança.
-   **Privacidade**: Ao criar ou modificar usuários, considere a privacidade e a segurança dos dados armazenados no sistema.

O comando `useradd` oferece flexibilidade na criação de usuários no Linux, permitindo personalizar diversas configurações associadas à nova conta de usuário.

<div id='groupadd'/>

### Comando `groupadd`

O comando `groupadd` é utilizado para criar novos grupos no sistema Linux. Geralmente, é executado com privilégios de superusuário (`root`) para modificar arquivos de sistema e configurar corretamente o novo grupo.

#### Sintaxe básica:
```ssh 
$ sudo groupadd nome_do_grupo
```
**Opções comuns:**

-   **-g, --gid**: Especifica o GID (Group ID) numérico para o novo grupo. Se não for especificado, o próximo GID disponível será atribuído automaticamente.
```ssh
$ sudo groupadd -g 3001 grupo1
```
-   **-r, --system**: Cria um grupo de sistema. Grupos de sistema são normalmente usados para serviços e processos do sistema, não para usuários normais.
```ssh
$ sudo groupadd -r grupo_sistema
```
#### Exemplo de uso:
```ssh
$ sudo groupadd -g 3001 grupo1
```
#### Observações importantes:

-   **Segurança**: Use o comando `groupadd` com cuidado, pois grupos mal configurados podem comprometer a segurança do sistema.
-   **Padrões de Nomenclatura**: Siga convenções de nomenclatura apropriadas ao criar novos grupos para manter o sistema organizado.
-   **Gerenciamento de Permissões**: Os grupos são essenciais para o controle de acesso a arquivos, diretórios e outros recursos compartilhados no Linux.

> Ao criar grupos no Linux com o comando `groupadd`, você pode organizar e gerenciar eficientemente permissões e acessos dentro do seu sistema operacional.

<div id='wc'/>

### Comando `wc`

O comando `wc` (word count) é uma ferramenta útil no Linux para contar palavras, linhas e caracteres em arquivos de texto. Ele é bastante versátil e possui várias opções que permitem realizar diferentes tipos de contagem e análise de dados. Aqui está uma visão geral dos principais usos e opções do comando `wc`:

#### Sintaxe básica:
```ssh 
$ wc nome_do_arquivo
```
Isso retornará três números:

-   O número de linhas no arquivo.
-   O número de palavras no arquivo.
-   O número de bytes no arquivo.

**Opções comuns:**

- **`-l`**: Conta apenas o número de linhas.
    
```ssh 
$ wc -l texto.txt
``` 
    
- **`-w`**: Conta apenas o número de palavras.
    
```ssh 
$ wc -w texto.txt
```
    
- **`-c`**: Conta apenas o número de bytes.
    
```ssh
$ wc -c texto.txt
``` 
    
-   **`-m`**: Conta apenas o número de caracteres. (Nota: alguns sistemas podem não suportar esta opção.)
    
```ssh
$ wc -m texto.txt
```
-   Para contar apenas o número de linhas e palavras:
    
```ssh
$ wc -lw texto.txt
```
    
-   Para contar todas as informações (linhas, palavras, bytes e caracteres):
    
```ssh
$ wc -lwc texto.txt
```
### Contagem de Múltiplos Arquivos

Você pode especificar vários arquivos para que o `wc` conte as linhas, palavras e bytes de cada um individualmente e também retorne a soma total no final:


```ssh
$ wc arquivo1.txt arquivo2.txt
```

### Exemplo

Suponha que você tenha um arquivo `exemplo.txt` com o seguinte conteúdo:

```ssh
Este é um exemplo de arquivo para contar palavras e linhas usando wc.
``` 

Para contar o número de linhas, palavras e bytes deste arquivo, você pode executar:


```ssh
$ wc exemplo.txt
```

Isso retornará algo como:


```ssh
$ 1 12 71 exemplo.txt
```

Onde:

-   `1` é o número de linhas.
-   `12` é o número de palavras.
-   `71` é o número de bytes.
-   `exemplo.txt` é o nome do arquivo analisado.

> O comando `wc` é uma ferramenta simples, mas poderosa, para realizar contagens rápidas de palavras, linhas e bytes em arquivos de texto no Linux. É amplamente utilizado em scripts de automação, análise de logs e processamento de dados onde a contagem precisa de informações é necessária.

<div id='ip'/>

### Comando `ip`
O comando `ip` no Linux é uma ferramenta poderosa usada para configurar e monitorar interfaces de rede, endereços IP e roteamento. Este roteiro fornece uma introdução prática ao uso do comando `ip` e suas opções mais comuns.

#### Sintaxe básica:

```bash
ip [OPTIONS] OBJECT COMMAND
```
-   **OPTIONS**: Opções adicionais (por exemplo, `-4` para IPv4 ou `-6` para IPv6)
-   **OBJECT**: Tipo de objeto a ser manipulado (por exemplo, `link`, `addr`, `route`)
-   **COMMAND**: Ação a ser executada (por exemplo, `show`, `add`, `del`)


### Exemplos

#### Configuração de Interfaces de Rede 

#### Listar Interfaces de Rede

```bash
$ ip link show
 ```
Exibe todas as interfaces de rede disponíveis no sistema.

#### Ativar/Desativar uma Interface

**Ativar uma interface:**
```bash
sudo ip link set dev <interface> up
``` 
    
**Desativar uma interface:**
```bash
sudo ip link set dev <interface> down
``` 
```bash
ip addr show
``` 
Exibe os endereços IP configurados em todas as interfaces.

```bash
sudo ip addr add <endereço_ip>/<máscara> dev <interface>
``` 
```bash
sudo ip addr add 192.168.1.10/24 dev eth0
``` 
```bash
sudo ip addr del <endereço_ip>/<máscara> dev <interface>
``` 
```bash
sudo ip addr del 192.168.1.10/24 dev eth0
``` 
```bash
ip route show
``` 
Exibe a tabela de roteamento atual.

```bash
sudo ip route add <rede>/<máscara> via <gateway>]
``` 
```bash
sudo ip route add 192.168.2.0/24 via 192.168.1.1
``` 
```bash
sudo ip route del <rede>/<máscara>
``` 
```bash
sudo ip route del 192.168.2.0/24
```
