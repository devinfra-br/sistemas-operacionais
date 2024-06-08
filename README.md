# Sistemas Operacionais Linux


## Introdução 

### História do Linux
O Linux é um sistema operacional de código aberto que surgiu no início da década de 1990. Sua história remonta ao projeto iniciado por Linus Torvalds, um estudante finlandês, em 1991. Torvalds desenvolveu o Linux como um sistema operacional baseado no Unix, inicialmente como um hobby, enquanto estudava na Universidade de Helsinki.

A ideia por trás do Linux era criar um sistema operacional que fosse livre, ou seja, que os usuários tivessem acesso ao código-fonte, pudessem modificá-lo e distribuí-lo livremente. Isso contrastava com os sistemas operacionais proprietários da época, como o Microsoft Windows e o MacOS.

###  Caracteristicas
Uma das características distintivas do Linux é sua natureza modular e flexível. Ele pode ser adaptado e utilizado em uma ampla variedade de dispositivos, desde servidores de grande escala até dispositivos embarcados e smartphones.

### Base linux
Ao longo dos anos, o Linux se tornou a base para muitas distribuições de sistemas operacionais, como Ubuntu, Fedora, Debian e CentOS, cada uma adaptada para atender a diferentes necessidades e preferências dos usuários.

###  Uso atualmente
Atualmente, o Linux é amplamente utilizado em servidores web, infraestrutura de nuvem, dispositivos IoT (Internet das Coisas), supercomputadores e até mesmo em sistemas embarcados em dispositivos eletrônicos de consumo.

> A filosofia de código aberto e comunidade colaborativa continuam a impulsionar o desenvolvimento e a inovação no mundo da tecnologia, fazendo do Linux um dos sistemas operacionais mais influentes e importantes da história da computação.


## Camadas do Sistema Operacional

**Interface do usuário**: No topo da pilha está a camada de interface do usuário, onde os usuários interagem diretamente com o sistema operacional por meio de interfaces gráficas (GUIs) ou linhas de comando (CLI).

**Shell**: Esta camada é onde a maioria dos programas e aplicativos são executados. Ele inclui todas as bibliotecas, utilitários e aplicativos de usuário que interagem com o kernel para realizar diversas tarefas.

**Kernel**: O núcleo do sistema operacional, conhecido como kernel, reside logo acima do hardware. Ele fornece uma interface entre o software e o hardware, gerenciando recursos do sistema, como processos, memória e dispositivos de entrada/saída.

**Hardware**: A camada mais baixa é o hardware físico do computador, incluindo processador, memória, dispositivos de armazenamento e periféricos.


<img src="https://lh7-us.googleusercontent.com/N_1zKviFnS_-iEoMoG2wWJZfH14Vsh3Zo1F7PUBhXSWzeDQKWQwGT33b7W3iEk-zXgx3sFMuRoz3dJarMh_0u_SIjA1YQlx63PglZsfoYvtaZKwQTVRZpI-Y4L0wJo1DKvSwt4JtHU7iScSkPvJ7_Ck" width="300" height="300" alt="Camadas Sistema Operacional"/>


Essas camadas formam uma pilha de software que permite aos usuários interagir com o hardware de maneira eficiente e realizar uma variedade de tarefas computacionais.


## Laboratório prático

### Instalação de Sistemas Operacionais Linux em Máquinas Virtuais (HyperV ou VmBox)

1. **Preparando o ambiente**
Para começar, vamos garantir que tenhamos todo o software necessário instalado em nossas máquinas host. Certifiquem-se de que o software de virtualização, como o VirtualBox, HyperV ou VMware, esteja devidamente configurado e pronto para uso.

2. **Configurando maquinas virtuais**
- Criem uma nova máquina virtual chamada "server01"
- Selecione Debian como o sistema operacional convidado.
- Atribuam a quantidade adequada de recursos, como memória 
	- 1GB Memória
	- 1 vCPU
	- 20Gb Disco
	
Link para download da ISO Debian https://www.debian.org/CD/http-ftp/

Link para site Oficial: https://www.debian.org/


**Curiosidades**
O desenvolvedor e criador do debian é Ian Murdock (28 de abril de 1973 – 28 de dezembro de 2015) foi um programador da Alemanha, fundador do projeto Debian e da distribuição linux comercial Progeny Debian. Ian criou o Debian em 1993 e escreveu seu famoso Manifesto Debian.


**Repitam os mesmos passos acima para criar uma nova máquina virtual chamada "server02".**

- Criem uma nova máquina virtual chamada "server02"
- Selecione CentOs como o sistema operacional convidado.
- Atribuam a quantidade adequada de recursos, como memória 
	- 1GB Memória
	- 1 vCPU
	- 20Gb Disco

Link para download da ISO CentOS https://mirror.uepg.br/centos/7.9.2009/isos/x86_64/

**Curiosidades**
CentOS, abreviação de Community ENTerprise Operating System, é uma distribuição Linux de classe corporativa derivada de códigos fonte gratuitamente distribuídos pela Red Hat Enterprise Linux e mantida pelo CentOS Project.


> Durante a instalação de cada sistema operacional, sigam as instruções na tela para configurar as opções de idioma, localização e configurações de rede conforme necessário. Certifiquem-se de definir uma senha forte para o usuário root e criar uma conta de usuário padrão, se solicitado.


## Diretórios e Arquivos - Aula 2

### Estrutura de pastas 

A estrutura de diretórios no Linux é organizada em uma hierarquia em forma de árvore, com o diretório raiz `/` no topo. Aqui estão alguns dos diretórios mais importantes e suas funções:

-   `/bin`: Contém binários essenciais para todos os usuários, como comandos básicos do sistema.
-   `/sbin`: Contém binários essenciais para o sistema e administração.
-   `/etc`: Contém arquivos de configuração do sistema.
-   `/home`: Contém os diretórios home dos usuários.
-   `/var`: Contém arquivos de variáveis, como logs, emails, e bancos de dados.
-   `/usr`: Contém aplicativos e arquivos do usuário.
-   `/tmp`: Diretório para arquivos temporários.

### Navegação em Diretórios no Linux

Manipular e navegar em diretórios no Linux é uma tarefa essencial que pode ser realizada usando vários comandos de terminal. Aqui estão alguns dos comandos mais comuns para essa finalidade:

### Estrutura de diretórios
A estrutura de diretórios do Debian (e de outras distribuições Linux baseadas em Unix) é organizada de forma hierárquica e segue o Filesystem Hierarchy Standard (FHS). Aqui está uma visão geral das principais pastas e suas finalidades:

![Linux File Hierarchy](https://media.licdn.com/dms/image/D5612AQGuHl_yMRdiQw/article-cover_image-shrink_600_2000/0/1680372550971?e=2147483647&v=beta&t=Dm2fjW6vnaTNiaIkYFOCXq5O3-L9xhvHyhVNYQQ0Cj0)


### Subdiretórios

**Diretório `/usr`**
Contém a maioria dos utilitários, programas e bibliotecas para uso geral. Subdiretórios importantes incluem:
```bash
# Binários de usuário comuns.
/usr/bin

# Binários de sistema para o administrador.
/usr/sbin

# Bibliotecas para binários em /usr/bin e /usr/sbin.
/usr/lib

# Hierarquia para software instalado localmente pelo administrador do sistema.
/usr/local
```

**Diretório `/var`**

Contém arquivos variáveis, como logs do sistema, filas de impressão, e-mails, dados de spool e arquivos temporários que precisam ser preservados entre reinicializações. Subdiretórios importantes incluem:

```bash
# Arquivos de log
/var/log

# Caixas de correio de usuários
/var/mail

# Dados de spool de impressão.
/var/spool
```

## Prática com Comandos

[Acesse aqui a lista de comandos linux com explicações](COMMANDS.md)


### Exercício 1: Liste todos os diretórios no nível raiz (`/`)

1. **Abrir o terminal.**
2. **Listar todos os diretórios no nível raiz:**
    ```sh
    ls -l /
    ```
    - **Explicação do comando:** 
      - `ls` é o comando para listar arquivos e diretórios.
      - `-l` é a opção para listar com detalhes, mostrando permissões, proprietário, tamanho e data de modificação.
      - `/` especifica o diretório raiz.

3. **Filtrar apenas os diretórios:**
    ```sh
    ls -l / | grep ^d
    ```
    - **Explicação do comando:**
      - `grep ^d` filtra a saída do `ls -l` para mostrar apenas linhas que começam com `d`, que indica diretórios.

### Exercício 2: Navegue até o diretório `/usr` e liste os seus conteúdos

1. **Navegar até o diretório `/usr`:**
    ```sh
    cd /usr
    ```
    - **Explicação do comando:**
      - `cd` é o comando para mudar de diretório.
      - `/usr` é o caminho do diretório para onde queremos navegar.

2. **Listar os conteúdos do diretório `/usr`:**
    ```sh
    ls -l
    ```
    - **Explicação do comando:**
      - `ls -l` lista os conteúdos do diretório atual com detalhes.
