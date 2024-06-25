# Sistemas Operacionais Linux

### Índice
1. [Introdução](#intro)
2. [Arquivos e Diretórios](#arquivos)
3. [Criando grupos e usuários](#usergroups)
4. [Permissões de arquivos e diretórios](#permissoes)
5. [Redirecionamento e pipes](#redirecionamento-pipes) 
6. [Editar arquivos de texto com o nano](#nano) 
7. [Gerenciamento de pacotes](#pacotes) 
8. [Editar arquivos com vim](#vim) 
9. [Agendamento de tarefas com cron](#cron) 
10. [Fumanentos básicos de redes com Linux](#redes) 
11. [Logs e monitoramento básico](#monitoring)


<div id='intro'/>

## Introdução  - Aula 1

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
	
Link para download da ISO Debian: https://www.debian.org/CD/http-ftp/

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

<div id='arquivos'/>

## Arquivos e Diretórios - Aula 2

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

## Usando Terminal e comandos de ajuda
O terminal é uma das ferramentas mais poderosas e essenciais no Linux. Ele permite que você interaja com o sistema operacional usando comandos de texto. Compreender como usar o terminal e os comandos de ajuda é fundamental para administrar e operar eficientemente um sistema Linux. Este tópico abordará os conceitos básicos do terminal e como usar os comandos de ajuda.

**Dicas para uso eficaz no terminal**
- Autocompletar: Use a tecla Tab para autocompletar nomes de arquivos e diretórios.
- Histórico de comandos `history`: Use as teclas de seta para cima e para baixo para navegar pelos comandos que você já digitou.
- Alias: Crie alias para comandos longos ou frequentemente usados. Por exemplo, adicione alias `ll='ls -la'` ao seu arquivo `.bashrc`.


### Prática com Comandos

[Acesse aqui a lista de comandos linux com explicações](COMMANDS.md)

### Exercício 1: Explorando comandos

-   Abra o terminal e use `pwd` para verificar seu diretório atual.
-   Use `ls` para listar os arquivos no diretório.
-   Crie um novo diretório chamado `exemplo` usando `mkdir exemplo`.
-   Navegue para o novo diretório com `cd exemplo`.
-   Use `man mkdir` para ler o manual do comando `mkdir`.
-   Crie um arquivo de texto no terminal usando `touch arquivo.txt` e, em seguida, liste os arquivos para verificar se foi criado com sucesso.
-   Use `rm arquivo.txt` para remover o arquivo criado.
-   Experimente usar `man`, `--help` e `info` com diferentes comandos de sua escolha.
- Listar todos os diretórios no nível raiz
- Filtrar apenas os diretórios
- Navegar até o diretório `/usr`
- Listar os conteúdos do diretório `/usr`

> Dominar o uso do terminal e dos comandos de ajuda permitirá que você opere com mais eficácia e eficiência no ambiente Linux, resolvendo problemas e automatizando tarefas com facilidade.

<div id='usergroups'/>

## Criando grupos e usuários no Linux - Aula 3

### O que são grupos e usuários no Linux?

**Usuários** são entidades que representam contas de indivíduos ou serviços que têm acesso ao sistema. Cada usuário possui um identificador único chamado UID (User Identifier) e várias propriedades associadas, como o nome de usuário, diretório inicial e shell padrão. No Linux, os usuários são essenciais para controlar o acesso ao sistema e aos seus recursos.

**Tipos de usuários**:

- **Usuário root**: O superusuário com permissões completas sobre o sistema. Pode executar qualquer comando e acessar todos os arquivos.
-  **Usuários normais**: Contas de usuário padrão, com permissões restritas para garantir a segurança do sistema.
- **Usuários de sistema**: Contas criadas pelo sistema para executar serviços e processos específicos. Eles geralmente não têm acesso interativo.

#### Arquivo de configuração de usuários

-   **/etc/passwd**: Contém informações sobre todos os usuários do sistema, incluindo o nome de usuário, UID, diretório inicial e shell padrão. Exemplo de uma linha do arquivo:
    
```ruby   
joao:x:1001:1001:Joao da Silva:/home/joao:/bin/bash
```
-   **joao**: Nome do usuário.
-   **x**: Placeholder para a senha (a senha real está em `/etc/shadow`).
-   **1001**: UID.
-   **1001**: GID (Group Identifier) principal do usuário.
-   **Joao da Silva**: Nome completo ou comentário.
-   **/home/joao**: Diretório inicial.
-   **/bin/bash**: Shell padrão.

### Grupos no Linux
**Grupos** são coleções de usuários. Eles são usados para simplificar a gestão de permissões e acesso a arquivos e diretórios. Cada grupo possui um identificador único chamado GID (Group Identifier).

**Tipos de grupos**:
- **Grupo principal**: Cada usuário é associado a um grupo principal definido no momento da criação do usuário.
- **Grupos suplementares**: Grupos adicionais aos quais um usuário pode pertencer. Um usuário pode fazer parte de vários grupos suplementares.

#### Arquivo de configuração de grupos

-   **/etc/group**: Contém informações sobre todos os grupos do sistema, incluindo o nome do grupo, GID e membros do grupo. Exemplo de uma linha do arquivo:
    
```ruby
desenvolvedores:x:1002:joao,maria
```    
- **desenvolvedores**: Nome do grupo.
- **x**: Placeholder (não utilizado).
- **1002**: GID.
- **joao,maria**: Lista de usuários que pertencem ao grupo.

### Configuração de senhas

-   **/etc/shadow**: é um dos arquivos críticos de sistema no Linux, especialmente usado para armazenar senhas de usuários de forma segura. 
Ele é essencial para a segurança do sistema, pois garante que as senhas dos usuários não sejam facilmente acessíveis a qualquer pessoa com acesso ao sistema.
```ruby
usuario:$6$AjF23u23$7fJgo38NkjErGhZljhfJbRJiO9FpNuUzNkZP3L2EC5YosA5GjZyTZmLZu3cTTNc1hWgy57p5uWZlU50ZB4e1:18624:0:99999:7:::
```
-   **usuario**: Nome de usuário.
-   **$6AjF23u23$7fJgo38NkjErGhZljhfJbRJiO9FpNuUzNkZP3L2EC5YosA5GjZyTZmLZu3cTTNc1hWgy57p5uWZlU50ZB4e1**: Senha criptografada.
-   **18624**: Última data de modificação da senha.
-   **0**: Número mínimo de dias para alteração da senha.
-  **99999**: Número máximo de dias para alteração da senha.
-   **7**: Aviso de expiração da senha.

#### Relação entre usuários e grupos

No Linux, as permissões de arquivos e diretórios são controladas com base em usuários e grupos. Cada arquivo ou diretório tem um proprietário (usuário) e um grupo associado, e as permissões são definidas para o proprietário, grupo e outros usuários.

#### Arquivos de configuração

-   `/etc/passwd`: Contém informações dos usuários.
-   `/etc/group`: Contém informações dos grupos.
-   `/etc/shadow`: Contém informações seguras das senhas dos usuários.

> Entender a estrutura e a gestão de usuários e grupos no Linux é fundamental para garantir a segurança e a eficiência na administração do sistema. Ao dominar esses conceitos, você poderá configurar acessos apropriados e manter seu sistema organizado e seguro.

### Lista de exercícios: criação e gerenciamento de usuários e grupos no Linux
- Crie um novo usuário chamado `estudante1`.
- Configure uma senha para o usuário `estudante1`.
- Crie um grupo chamado `curso`.
- Adicione o usuário `estudante1` ao grupo `curso`.
- Verifique o UID e GID do usuário `estudante1`.
- Liste todos os grupos aos quais o usuário `estudante1` pertence.
- Altere o diretório inicial do usuário `estudante1` para `/home/novapasta`.
- Altere o shell padrão do usuário `estudante1` para `/bin/zsh`.
- Crie um novo usuário chamado `estudante2` e adicione-o aos grupos `curso` e `grupoextra`.
- Verifique se todas as alterações foram aplicadas corretamente listando as informações dos usuários e grupos.
- Remova o usuário `estudante1` e o grupo `curso`.

<div id='permissoes' />

##   Permissões de arquivos e diretórios no Linux - Aula 4

No Linux, o sistema de permissões de arquivos e diretórios é essencial para a segurança e o gerenciamento de acesso. Cada arquivo e diretório tem permissões que determinam quem pode ler, escrever ou executar. Essas permissões são atribuídas a três categorias de usuários: proprietário, grupo e outros.

### Estrutura de Permissões

As permissões no Linux são geralmente visualizadas usando o comando `ls -l`. A saída típica deste comando é algo como:

```diff
-rwxr-xr--
```
Este exemplo pode ser dividido da seguinte forma:

-   **-rwxr-xr--**
    -   O primeiro caractere indica o tipo (`-` para arquivo regular, `d` para diretório, `l` para link simbólico, etc.).
    -   Os próximos três caracteres (`rwx`) indicam as permissões do proprietário.
    -   Os próximos três caracteres (`r-x`) indicam as permissões do grupo.
    -   Os últimos três caracteres (`r--`) indicam as permissões para outros usuários.

### Tipos de Permissões

-   **r (read)**: Permite a leitura do conteúdo do arquivo ou a listagem do conteúdo do diretório.
-   **w (write)**: Permite modificar o conteúdo do arquivo ou adicionar/remover arquivos em um diretório.
-   **x (execute)**: Permite executar um arquivo ou acessar um diretório.

### Modificando Permissões

As permissões podem ser alteradas usando o comando `chmod`. Existem duas maneiras principais de usar o `chmod`: com notação simbólica e com notação octal.

#### Notação Simbólica

A notação simbólica usa letras para representar ações:

-   `u`: proprietário (user)
-   `g`: grupo
-   `o`: outros
-   `a`: todos (all)

As operações incluem:

-   `+`: adicionar permissão
-   `-`: remover permissão
-   `=`: definir permissão

Exemplos:

-   `chmod u+x [nome_arquivo]`: Adiciona permissão de execução para o proprietário.
-   `chmod g-w [nome_arquivo]`: Remove permissão de escrita para o grupo.
-   `chmod o=r [nome_arquivo]`: Define permissão de leitura para outros.

#### Notação Octal

A notação octal usa números para representar permissões:

-   `4`: leitura (r)
-   `2`: escrita (w)
-   `1`: execução (x)

Cada categoria (proprietário, grupo, outros) é representada por um dígito. Exemplos:

-   `chmod 755 [nome_arquivo]`: Define permissões como `rwxr-xr-x`.
-   `chmod 644 [nome_arquivo]`: Define permissões como `rw-r--r--`.

### Modificando Proprietário e Grupo

Além das permissões, o proprietário e o grupo de um arquivo ou diretório podem ser alterados usando `chown` e `chgrp`.

-   `chown user [nome_arquivo]`: Altera o proprietário do arquivo.
-   `chgrp group [nome_arquivo]`: Altera o grupo do arquivo.

### Prática com permissões

### Exercício 1: Explorando permissões

-   **Visualizar Permissões**
    
    -   Liste os arquivos no diretório atual e visualize suas permissões.
-   **Modificar Permissões com Notação Simbólica**
    
    -   Adicione permissões específicas para usuários, grupos ou outros usando a notação simbólica.
    -   Remova permissões específicas para usuários, grupos ou outros usando a notação simbólica.
-   **Modificar Permissões com Notação Octal**
    
    -   Defina permissões completas para um arquivo ou diretório usando notação octal.
    -   Ajuste as permissões para diferentes combinações de leitura, escrita e execução usando notação octal.
-   **Alterar Proprietário e Grupo**
    
    -   Mude o proprietário de um arquivo ou diretório.
    -   Mude o grupo de um arquivo ou diretório.
-   **Adicione Permissão de Execução para o Grupo**
    
    -   Conceda permissão de execução a um grupo para um arquivo ou diretório específico.
-   **Remova Permissão de Escrita para o Proprietário**
    
    -   Remova a permissão de escrita para o proprietário de um arquivo ou diretório.
-   **Verifique as Mudanças**
    
    -   Confirme todas as alterações de permissões, proprietário e grupo realizadas anteriormente.
    -   Liste os arquivos e diretórios novamente para garantir que as permissões foram aplicadas corretamente.

<div id='redirecionamento-pipes'/>
   
##   Redirecionamento e Pipes no Linux - Aula 5  

### Redirecionamento de Entrada e Saída

O redirecionamento de entrada e saída permite que você controle de onde os dados são lidos e para onde eles são escritos no Linux. Isso é útil para salvar a saída de comandos em arquivos, fornecer entradas para comandos a partir de arquivos e redirecionar mensagens de erro para diferentes destinos.

#### Redirecionamento de Saída (`>` e `>>`)

**`>`**: Redireciona a saída padrão de um comando para um arquivo. Se o arquivo existir, ele será substituído.
    
```ssh
$ ls -l > lista_arquivos.txt
```
    
**`>>`**: Anexa a saída padrão de um comando ao final de um arquivo existente (ou cria um novo arquivo se não existir).
    
```ssh
echo "Nova linha" >> lista_arquivos.txt
```
#### Redirecionamento de Entrada (`<`)
**`<`**: Fornece entrada para um comando a partir de um arquivo.
    
```ssh
sort < arquivo_desordenado.txt > arquivo_ordenado.txt
```

#### Redirecionamento de Saída de Erro (`2>` e `2>>`)

**`2>`**: Redireciona a saída de erro padrão de um comando para um arquivo.
    
```ssh
comando_inexistente 2> erro.log
``` 
    
**`2>>`**: Anexa a saída de erro padrão de um comando ao final de um arquivo existente.
    
```ssh
comando_inexistente 2>> erro.log
```
### Pipes (`|`)

Os pipes permitem encadear múltiplos comandos, direcionando a saída de um comando como entrada para o próximo comando na sequência. Isso é extremamente útil para processamento de dados em tempo real e automação de tarefas.

**Exemplo simples de uso de pipes:**
```ssh
ls -l | grep ".txt"
```
Neste exemplo, `ls -l` lista os arquivos no diretório atual e o resultado é passado para `grep ".txt"`, que filtra apenas os arquivos que contêm ".txt" em seus nomes.

### Prática uso de redirecionamento e pipe no linux

-   **Redirecionamento de Saída (`>` e `>>`)**
    
    a) Crie um arquivo chamado `notas.txt` e escreva algumas notas usando um editor de texto no terminal.
    
    b) Liste o conteúdo do diretório atual e redirecione a saída para um arquivo chamado `lista_arquivos.txt`.
    
    c) Anexe a listagem dos arquivos de um subdiretório ao final do arquivo `lista_arquivos.txt` sem substituir o conteúdo existente.
    
-   **Redirecionamento de Entrada (`<`)**
    
    a) Crie um arquivo `nomes.txt` com alguns nomes de pessoas em cada linha.
    
    b) Utilize o comando `sort` para ordenar os nomes alfabeticamente e redirecione a entrada a partir do arquivo `nomes.txt`. Salve a saída em um novo arquivo chamado `nomes_ordenados.txt`.
    
-   **Redirecionamento de Saída de Erro (`2>` e `2>>`)**
    
    a) Execute um comando inexistente, redirecionando a saída de erro para um arquivo chamado `erro.log`.
    
    b) Execute o mesmo comando novamente, mas anexe a saída de erro ao final do arquivo `erro.log`.
    
-   **Pipes (`|`)**
    
    a) Liste todos os arquivos no diretório `/etc` e use um pipe para contar quantos desses arquivos são arquivos de configuração `.conf`.
    
    b) Utilize um pipe para contar quantas vezes a palavra "Linux" aparece em um arquivo de texto.
    
-   **Combinando Redirecionamento e Pipes**
    
    a) Execute um comando complexo que gera tanto saída padrão quanto saída de erro. Redirecione a saída padrão para um arquivo `saida.txt` e a saída de erro para um arquivo `erro.txt`.
    
    b) Concatene dois arquivos de texto (`arquivo1.txt` e `arquivo2.txt`) usando um pipe e redirecione a saída para um novo arquivo `concatenado.txt`

<div id='nano'/>

##  Editar arquivos de texto com o nano - Aula 6  
O Nano é um editor de texto simples e amigável que roda diretamente no terminal de sistemas Unix/Linux. Ele é especialmente útil para iniciantes devido à sua interface intuitiva e comandos de teclado fáceis de lembrar. Abaixo estão algumas informações úteis sobre como usar o Nano:

### Como abrir o Nano

Para abrir o Nano e começar a editar um arquivo, basta digitar o seguinte comando no terminal:

```ssh
$ nano nome_do_arquivo
``` 
Por exemplo, para editar um arquivo chamado `notas.txt`, você usaria:

```ssh
$ nano notas.txt
```

### Comandos Básicos do Nano

1.  **Salvar o Arquivo:**
    
    -   Pressione `Ctrl + O` (Ctrl e a tecla O ao mesmo tempo).
    -   Você será solicitado a confirmar o nome do arquivo. Pressione `Enter` para salvar o arquivo com o nome atual ou digite um novo nome e pressione `Enter`.
2.  **Sair do Nano:**
    
    -   Pressione `Ctrl + X`.
    -   Se houver alterações não salvas, o Nano perguntará se deseja salvar antes de sair. Responda `Y` (yes) para salvar, `N` (no) para não salvar, ou `Ctrl + C` para cancelar.
3.  **Navegar pelo Texto:**
    
    -   Use as teclas de seta para mover o cursor.
    -   Page Up e Page Down para rolar uma página para cima ou para baixo.
    -   Home para ir para o início da linha e End para ir para o final da linha.
4.  **Editar o Texto:**
    
    -   Simplesmente comece a digitar para inserir texto.
    -   Use as teclas de edição padrão (Backspace, Delete, etc.) para modificar o texto existente.
5.  **Recuos Automáticos:**
    
    -   O Nano possui um recurso de recuo automático que pode ser ativado ou desativado pressionando `Alt + \` (Alt e a tecla de barra invertida ao mesmo tempo).

### Dicas Adicionais

-   **Comentários no Nano:** O Nano possui uma linha na parte inferior da tela com várias opções e atalhos úteis, incluindo uma lista de comandos principais.
-   **Personalização:** Você pode personalizar o Nano criando um arquivo `.nanorc` no seu diretório home e adicionando configurações específicas.

> O Nano oferece uma maneira simples e eficaz de editar arquivos de texto diretamente no terminal do Linux, sendo uma ferramenta útil para uma variedade de tarefas, desde edição rápida até trabalho mais detalhado com scripts e configurações.

<div id='pacotes'/>

##  Gerenciamento de pacotes - Aula 7

O gerenciamento de pacotes em servidores Linux é uma tarefa crucial para manter o sistema atualizado, seguro e funcional. Debian e CentOS, duas das distribuições mais populares para servidores, utilizam diferentes sistemas de gerenciamento de pacotes: APT para Debian e YUM/DNF para CentOS. Abaixo está um guia abrangente sobre o gerenciamento de pacotes em servidores Debian e CentOS.


### Gerenciamento de Pacotes no Debian com APT

#### Comandos Básicos do `apt`

**Atualizar a Lista de Pacotes:** 
Atualize a lista de pacotes disponíveis nos repositórios configurados.
    
```ssh
$ sudo apt update
```
    
**Atualizar Pacotes Instalados:** 
Atualize todos os pacotes instalados para as versões mais recentes disponíveis.
    
```ssh
$ sudo apt upgrade
```
    
**Instalar um Novo Pacote:** 
Instale um novo pacote do repositório.
    
```ssh
$ sudo apt install nome_do_pacote
``` 
    
**Remover um Pacote Instalado:** 
Remova um pacote, mas mantenha os arquivos de configuração.
    
```ssh
$ sudo apt remove nome_do_pacote
``` 
    
**Remover um Pacote e Seus Arquivos de Configuração:** 
Remova completamente um pacote, incluindo seus arquivos de configuração.
    
```ssh
$ sudo apt purge nome_do_pacote
``` 
    
**Limpar Pacotes Não Necessários:** 
Remova pacotes e dependências que não são mais necessários.
    
```ssh
$ sudo apt autoremove
``` 
    
**Limpar o Cache de Pacotes:** 
Limpe os pacotes baixados do cache local.
    
```ssh
$ sudo apt clean
``` 
    
**Buscar Pacotes:** 
Procure por pacotes disponíveis nos repositórios.
    
```ssh
$ apt search nome_do_pacote
```
    
**Exibir Informações sobre um Pacote:** 
Exiba detalhes sobre um pacote específico.
    
```ssh
apt show nome_do_pacote
```
    

### Exemplo Prático no Debian

**Instalar o nginx:**
    
```ssh
$ sudo apt update
$ sudo apt install nginx
```    
    
**Atualizar todos os Pacotes Instalados:**
    
```ssh
$ sudo apt update
$ sudo apt upgrade
``` 
    
**Remover o Apache e seus Arquivos de Configuração:**
    
```ssh
$ sudo apt purge nginx
$ sudo apt autoremove
```
### Gerenciamento de Pacotes no CentOS com `yum` e `dnf`

#### Comandos Básicos do YUM (CentOS 7 e Anteriores)

**Atualizar a Lista de Pacotes e os Pacotes Instalados:**
    
```ssh
$ sudo yum update
``` 
    
**Instalar um Novo Pacote:**
    
```ssh
$ sudo yum install nome_do_pacote
``` 
    
**Remover um Pacote Instalado:**
    
```ssh
$ sudo yum remove nome_do_pacote
``` 
    
**Buscar Pacotes:**
    
```ssh
$ yum search nome_do_pacote
```
    
**Exibir Informações sobre um Pacote:**
    
```ssh
$ yum info nome_do_pacote
``` 
    
**Limpar o Cache do YUM:**
    
```ssh
$ sudo yum clean all
```
    
#### Comandos Básicos do DNF (CentOS 8 e Posteriores)

**Atualizar a Lista de Pacotes e os Pacotes Instalados:**
    
```ssh
$ sudo dnf upgrade
```
    
**Instalar um Novo Pacote:**
```ssh
$ sudo dnf install nome_do_pacote
``` 
    
**Remover um Pacote Instalado:**
    
```ssh
$ sudo dnf remove nome_do_pacote
``` 
    
**Buscar Pacotes:**
    
```ssh
$ dnf search nome_do_pacote
``` 
    
**Exibir Informações sobre um Pacote:**
    
```ssh
$ dnf info nome_do_pacote
```
    
**Limpar o Cache do DNF:**
    
```ssh
$ sudo dnf clean all
```
    
### Exemplo Prático no CentOS

1.  **Instalar o Apache (usando YUM no CentOS 7):**
    
```ssh
$ sudo yum install httpd
``` 
    
**Instalar o Apache (usando DNF no CentOS 8):**
```ssh
$ sudo dnf install httpd
``` 
    
**Atualizar todos os Pacotes Instalados (usando DNF no CentOS 8):**
    
```ssh
$ sudo dnf upgrade
```   
**Remover o Apache (usando YUM no CentOS 7):**
    
```ssh
$ sudo yum remove httpd
```
    
**Remover o Apache (usando DNF no CentOS 8):**
    
```ssh
$ sudo dnf remove httpd
```
### `yum` vs `dnf`

`YUM` (Yellowdog Updater, Modified) e `DNF` (Dandified YUM) são ambos sistemas de gerenciamento de pacotes utilizados em distribuições Linux baseadas no Red Hat, como CentOS e Fedora. `DNF` foi introduzido como o sucessor do `YUM` para resolver alguns problemas e limitações presentes no `YUM`. 

O `DNF` foi desenvolvido para superar as limitações do `YUM`, oferecendo melhor performance, resolução de dependências mais eficaz, gerenciamento de repositórios aprimorado e um conjunto de funcionalidades mais moderno e extensível. Para usuários de distribuições como CentOS 8+ e Fedora 22+, `DNF` é o gerenciador de pacotes recomendado e padrão, enquanto `YUM` continua a ser utilizado em sistemas mais antigos ou em distribuições que ainda não migraram para `DNF`.


> Tanto APT no Debian quanto YUM e DNF no CentOS são ferramentas poderosas para gerenciamento de pacotes. Conhecer os comandos básicos e como utilizá-los efetivamente é essencial para administrar servidores Linux, mantendo-os atualizados, seguros e funcionais. Com a prática, você poderá gerenciar pacotes e dependências com confiança, garantindo a estabilidade e eficiência do seu ambiente de servidor.

<div id='vim'/>

##  Editar arquivos usando vim - Aula 8

O VIM (Vi IMproved) é um poderoso editor de texto baseado no vi, amplamente utilizado no mundo Linux e Unix. Ele é conhecido por sua eficiência e capacidade de edição de texto avançada, sendo uma ferramenta indispensável para administradores de sistemas, programadores e entusiastas de tecnologia.

## Estrutura do VIM

O VIM opera em diferentes modos, cada um com sua funcionalidade específica:

1.  **Modo Normal**: Modo padrão ao abrir o VIM. Utilizado para navegação e execução de comandos.
2.  **Modo de Inserção**: Utilizado para editar e inserir texto (`i` para entrar).
3.  **Modo de Comando**: Utilizado para salvar, sair e executar comandos do VIM (`:` para entrar).
4.  **Modo Visual**: Utilizado para selecionar blocos de texto (`v` para entrar).

**Passos Básicos para Iniciantes:**

**Abrir um Arquivo:**
    
```ssh 
$ vim nome_do_arquivo
``` 

**Entrar no Modo de Inserção:**
    -   Pressione `i` para começar a editar o texto.

**Salvar e Sair:**
    -   Pressione `Esc` para voltar ao Modo Normal.
    -   Digite `:wq` e pressione `Enter` para salvar e sair.

**Sair Sem Salvar:**
    -   Pressione `Esc` para voltar ao Modo Normal.
    -   Digite `:q!` e pressione `Enter` para sair sem salvar.

#### Comandos Úteis do VIM

-   **Navegação:**
    
    -   `h`, `j`, `k`, `l`: Mover o cursor para a esquerda, baixo, cima e direita.
    -   `gg`: Ir para o início do arquivo.
    -   `G`: Ir para o final do arquivo.
   
-   **Edição:**
    
    -   `dd`: Deletar a linha atual.
    -   `yy`: Copiar (yank) a linha atual.
    -   `p`: Colar após o cursor.
    -   `u`: Desfazer a última ação.
    
-   **Pesquisa e Substituição:**
    
    -   `/texto`: Pesquisar por "texto".
    -   `:s/antigo/novo/g`: Substituir "antigo" por "novo" na linha atual.
    -   `:%s/antigo/novo/g`: Substituir "antigo" por "novo" no arquivo inteiro.

#### Recursos Avançados

-   **Macros:**
    
    -   Gravar macros com `q` seguido por uma letra (`qa` para gravar em 'a').
    -   Executar a macro com `@a`.
    
-   **Plugins:**
    
    -   Expanda as funcionalidades do VIM com plugins como NerdTree (gerenciamento de arquivos) e Vim-Airline (barra de status).

#### Prática e Exploração

A melhor maneira de se familiarizar com o VIM é praticando. Explore os comandos, modos e funcionalidades para ganhar proficiência.

**Desafio:** Edite um arquivo de configuração e pratique comandos de navegação e edição. Tente usar modos diferentes e experimentar comandos de pesquisa e substituição.

<div id='cron'/>

##  Agendamento de tarefas com cron - Aula 9

O `cron` é uma ferramenta poderosa no Linux para agendar tarefas e comandos que precisam ser executados periodicamente. É amplamente utilizado para automação de tarefas de administração do sistema, manutenção, backups, monitoramento e muito mais. Abaixo está um guia detalhado sobre como utilizar o `cron` para agendar tarefas.

### Introdução ao Cron

O `cron` usa um arquivo chamado `crontab` (abreviação de "cron table") para gerenciar a agenda de tarefas. Cada usuário pode ter seu próprio arquivo `crontab`, e há também um arquivo `crontab` global para tarefas do sistema.

### Estrutura do Crontab

Cada linha no arquivo `crontab` representa uma tarefa agendada e segue a seguinte estrutura:

```ssh
* * * * * comando_a_ser_executado
- - - - -
| | | | |
| | | | +---- Dia da semana (0 - 7) (Domingo é 0 ou 7)
| | | +------ Mês (1 - 12)
| | +-------- Dia do mês (1 - 31)
| +---------- Hora (0 - 23)
+------------ Minuto (0 - 59)
```

### Exemplos de Agendamento

**Executar um comando a cada minuto:**
    
```ssh
* * * * * /caminho/do/comando
```
    
**Executar um comando todos os dias às 2h30 da manhã:**
    
```ssh
30 2 * * * /caminho/do/comando
```
    
**Executar um comando toda segunda-feira às 3h00 da manhã:**
    
```ssh
0 3 * * 1 /caminho/do/comando
```
    
**Executar um comando todo dia 1º do mês às 4h00 da manhã:**
    
```ssh
0 4 1 * * /caminho/do/comando
```
    
**Executar um comando de segunda a sexta-feira às 5h15 da manhã:**
    
```ssh
15 5 * * 1-5 /caminho/do/comando
```

### Editando o Crontab

Para editar seu próprio arquivo `crontab`, use o comando:

```ssh
crontab -e
```

Isso abrirá o arquivo `crontab` no editor padrão do seu sistema (como o `nano` ou `vim`). Adicione suas tarefas conforme a estrutura mencionada anteriormente.

### Visualizando Tarefas Agendadas

Para visualizar as tarefas agendadas no seu `crontab`, use o comando:


```ssh
crontab -l
```

### Excluindo Tarefas Agendadas

Para remover todas as suas tarefas agendadas, use o comando:


```ssh
crontab -r
```

### Logs e Verificação de Execução

Para verificar se suas tarefas agendadas estão sendo executadas corretamente, você pode olhar os logs do sistema. As mensagens do `cron` geralmente são registradas em `/var/log/syslog` ou `/var/log/cron`. Use o comando `grep` para filtrar os logs relacionados ao `cron`:


```ssh
grep CRON /var/log/syslog
```

### Exemplo Prático

Vamos criar uma tarefa cron que faz backup de uma pasta chamada `/home/usuario/dados` para uma pasta `/home/usuario/backup` todos os dias às 2h00 da manhã.

**Abra o `crontab` para edição:**
    
```ssh
crontab -e
``` 
    
**Adicione a seguinte linha ao `crontab`:**
    
```ssh
0 2 * * * cp -r /home/usuario/dados /home/usuario/backup
```
    
**Salve e feche o editor.**  

Agora, a tarefa de backup será executada automaticamente todos os dias às 2h00 da manhã.

> O `cron` é uma ferramenta essencial para automação de tarefas em sistemas Unix/Linux. Com uma compreensão básica de como configurar e gerenciar tarefas agendadas com `cron`, você pode automatizar muitas tarefas repetitivas, melhorando a eficiência e garantindo que tarefas críticas sejam executadas regularmente.

<div id='redes'/>

## Fundamentos Básicos de Redes com Debian e CentOS - Aula 10

**Redes de Computadores** permitem a comunicação entre diferentes dispositivos para compartilhar recursos e informações. No contexto do Linux, distribuições como Debian e CentOS são comumente utilizadas em servidores e dispositivos de rede devido à sua estabilidade e suporte robusto.

#### Modelo OSI e TCP/IP

**Modelo OSI (Open Systems Interconnection)** é uma referência conceptual para a compreensão das comunicações em rede. Ele define sete camadas que descrevem como dados são transmitidos de um dispositivo para outro em uma rede. As camadas são:

1.  **Camada Física**: Transmissão de bits através de meios físicos.
2.  **Camada de Enlace de Dados**: Controle de fluxo e detecção de erros.
3.  **Camada de Rede**: Roteamento de pacotes através da rede.
4.  **Camada de Transporte**: Controle de comunicação ponto a ponto, como TCP e UDP.
5.  **Camada de Sessão**: Gerencia sessões de comunicação entre dispositivos.
6.  **Camada de Apresentação**: Tradução, compressão e criptografia de dados.
7.  **Camada de Aplicação**: Interface entre aplicativos de usuário e rede.

**TCP/IP (Transmission Control Protocol/Internet Protocol)** é o conjunto de protocolos utilizado na Internet e na maioria das redes locais. Ele não segue exatamente o modelo OSI, mas suas funcionalidades são distribuídas em camadas similares ao modelo OSI.

#### TCP (Transmission Control Protocol)

**TCP** é um dos principais protocolos da camada de transporte no TCP/IP. Ele oferece comunicação confiável, estabelecendo uma conexão entre dois dispositivos para garantir que os dados sejam entregues sem erros e na sequência correta. Características principais do TCP incluem:

-   **Conexão Orientada**: Estabelece uma conexão antes de enviar dados.
-   **Controle de Fluxo**: Garante que um transmissor não sobrecarregue um receptor.
-   **Controle de Congestionamento**: Evita congestionamentos na rede ajustando a taxa de transmissão.
-   **Reordenação de Pacotes**: Reordena pacotes recebidos fora de ordem.

<img src="https://www.dltec.com.br/blog/wp-content/uploads/2019/02/osi-tcp-ip.png" alt="Básico Redes"/>

> Consulte mais informações no link: https://www.dltec.com.br/blog/redes/4-motivos-para-aprender-modelo-osi/

Para saber mais sobre TCP/IP acesse: https://www.cisco.com/c/pt_br/support/docs/ip/routing-information-protocol-rip/13769-5.html


#### Simples configuração de rede no Debian e CentOS

#### Debian

**Verificar Interfaces de Rede:**
    
```ssh
$ ip a
``` 
    
 **Configurar Interface de Rede:** Editar `/etc/network/interfaces` e adicionar configuração:
    
```vim
$ auto eth0
    iface eth0 inet static
        address 192.168.1.10
        netmask 255.255.255.0
        gateway 192.168.1.1
        dns-nameservers 8.8.8.8 8.8.4.4
```          
    
**Reiniciar Serviço de Rede:**
    
```ssh
$ sudo systemctl restart networking
```

#### CentOS

**Verificar Interfaces de Rede:**
    
```ssh
$ nmcli device show
``` 
    
**Configurar Interface de Rede:**
    
```ssh
$ sudo nmcli con add type ethernet ifname ens33 ip4 192.168.1.10/24 gw4 192.168.1.1
$ sudo nmcli con mod ens33 ipv4.dns "8.8.8.8 8.8.4.4"
$ sudo nmcli con up ens33
```    
> Compreender os fundamentos de redes, o modelo OSI, o protocolo TCP e como configurar redes no Debian e CentOS é essencial para administradores de sistemas. Esses conhecimentos são fundamentais para configurar, manter e diagnosticar problemas em redes de computadores, garantindo a conectividade e segurança dos sistemas operacionais Linux em ambientes corporativos e de servidor.


### DNS (Domain Name System)

O DNS (Domain Name System) é um sistema fundamental da Internet que converte nomes de domínio legíveis por humanos em endereços IP (Internet Protocol) utilizados pelos computadores para se comunicarem entre si. Neste guia, vamos explorar o funcionamento básico do DNS, sua importância e como configurá-lo em sistemas Linux, como Debian e CentOS.

#### Funcionamento Básico do DNS

O DNS funciona como um diretório distribuído e hierárquico de informações de mapeamento de nomes de domínio para endereços IP. Quando você digita um nome de domínio em um navegador web, por exemplo, o sistema operacional consulta um servidor DNS para obter o endereço IP correspondente. Esse processo envolve várias etapas:

**Consulta ao DNS Resolver:** O sistema operacional consulta um servidor DNS resolver configurado localmente (como definido no arquivo `/etc/resolv.conf`).
    
**Consulta aos Servidores Autoritativos:** O servidor DNS resolver consulta servidores DNS autoritativos, que possuem informações sobre o domínio específico requisitado.
    
**Resolução e Cache:** Uma vez obtido o endereço IP, ele pode ser armazenado em cache pelo resolver localmente para acelerar futuras consultas.
    

#### Componentes do DNS

-   **Zona DNS:** Uma zona é uma parte do espaço de nome DNS administrada por um administrador de DNS. Ela contém registros que definem propriedades de um domínio, como `A` (endereço IPv4), `AAAA` (endereço IPv6), `MX` (registro de correio), `CNAME` (nome canônico) e outros.
    
-   **Servidores DNS Autoritativos:** São servidores responsáveis por armazenar informações sobre um domínio específico e responder a consultas DNS.
    
-   **Servidores DNS Resolver:** Servidores configurados para consultar outros servidores DNS em nome dos clientes (computadores, dispositivos) para resolver nomes de domínio em endereços IP.
    

#### Configuração do DNS no Linux (Debian e CentOS)

#### Debian

**Editar o arquivo `/etc/resolv.conf`:**
    
```ssh
$ sudo nano /etc/resolv.conf
``` 
    
**Adicionar servidores DNS:**
    
```vim
nameserver 8.8.8.8     # Exemplo de servidor DNS do Google
nameserver 8.8.4.4
```    
    
**Salvar e sair do editor.**
    

#### CentOS

**Editar o arquivo `/etc/resolv.conf`:**
    
```ssh
$ sudo nano /etc/resolv.conf
```
    
2.  **Adicionar servidores DNS:**
    
```vim 
nameserver 8.8.8.8     # Exemplo de servidor DNS do Google
nameserver 8.8.4.4
```
    
**Salvar e sair do editor.**
    

#### Ferramentas de Diagnóstico de DNS

**`nslookup`:** Ferramenta para consultar informações DNS de servidores.
    
```ssh
$ nslookup google.com
``` 

**`dig`:** Ferramenta de consulta DNS mais avançada que fornece informações detalhadas.
    
```ssh
$ dig google.com
``` 
    
**`host`:** Ferramenta simples para consultar o DNS.
    
```ssh
$ host google.com
``` 
    
> O DNS desempenha um papel fundamental na Internet, permitindo que os usuários acessem recursos através de nomes de domínio legíveis. Configurar corretamente os servidores DNS no Linux é essencial para garantir a conectividade e o funcionamento adequado de aplicativos e serviços que dependem da resolução de nomes. Compreender como funciona o DNS e saber configurá-lo são habilidades essenciais para administradores de sistemas Linux.

<div id='monitoring'/>

## Logs e monitoramento básico - Aula 11
#### Introdução aos Logs

**Logs** são registros detalhados de eventos que ocorrem em sistemas operacionais, aplicativos e dispositivos de rede. Eles são essenciais para diagnóstico de problemas, segurança, conformidade e análise de desempenho. Neste guia, exploraremos como acessar e interpretar logs em sistemas Linux, como Debian e CentOS, além de técnicas básicas de monitoramento.

#### Localização dos Arquivos de Log

Os arquivos de log em sistemas Linux são geralmente encontrados nos diretórios `/var/log` e `/var/log/<nome_do_serviço>` para serviços específicos. Alguns dos logs mais comuns são:

-   **`/var/log/syslog`**: Mensagens de sistema gerais no Debian.
-   **`/var/log/messages`**: Mensagens de sistema gerais no CentOS.
-   **`/var/log/auth.log`**: Logs de autenticação no Debian.
-   **`/var/log/secure`**: Logs de autenticação no CentOS.
-   **`/var/log/nginx/access.log`**: Logs de acesso HTTP do servidor web Nginx.
-   **`/var/log/mysql/error.log`**: Logs de erros do servidor de banco de dados MySQL/MariaDB.
-   **`/var/log/apache2/access.log`**: Logs de acesso HTTP do servidor web Apache.

#### Comandos Básicos para Análise de Logs

**Visualização de Logs:**

Mostrar as últimas 50 linhas do arquivo syslog    
```ssh
$ tail -n 50 /var/log/syslog
```
Visualiza o arquivo auth.log com o comando less     
```ssh
$ less /var/log/auth.log 
```      
    
**Pesquisa em Logs:**

Pesquisa por "Erro" no arquivo de log do Nginx    

```ssh
$ grep "Erro" /var/log/nginx/error.log  
``` 

Lista logs do serviço Nginx desde 1º de junho de 2024     

```ssh
$ journalctl -u nginx.service --since "2024-06-01"   
```
    
3.  **Filtragem e Análise Avançada:**

Exibe colunas específicas do arquivo syslog   
 
```ssh
$ cat /var/log/syslog | awk '{print $4, $5, $6, $7, $8}' 
```
Mostra novas entradas conforme são adicionadas ao arquivo access.log do Nginx    
```ssh
$ tail -f /var/log/nginx/access.log
```
    

### Monitoramento Básico

**Monitoramento de Recursos do Sistema:**
    
**`top`**: Exibe processos em execução e uso de recursos.
        
```ssh
$ top
```
        
**`htop`**: Interface interativa para monitorar processos e recursos.
        
```ssh
$ sudo apt install htop    # Instalação no Debian
$ sudo yum install htop    # Instalação no CentOS
```
        
**Monitoramento de Tráfego de Rede:**
    
**`iftop`**: Monitora o tráfego de rede em tempo real.
        
```ssh
$ sudo apt install iftop   # Instalação no Debian
$ sudo yum install iftop   # Instalação no CentOS
$ sudo iftop -i eth0       # Monitora tráfego na interface eth0
``` 
        
**Monitoramento de Logs em Tempo Real:**
    
**`journalctl`**: Ferramenta para acessar e monitorar logs do sistema.
        
```ssh
$ journalctl -f     # Monitora logs em tempo real` 
```
        
**`tail` com `-f`**: Monitora logs específicos em tempo real.
        
```ssh
$ tail -f /var/log/nginx/access.log   # Monitora acessos HTTP no Nginx
```
        
> Logs e monitoramento são componentes críticos para administrar e manter a saúde de sistemas Linux como Debian e CentOS. Compreender como acessar, interpretar e monitorar logs é fundamental para resolver problemas rapidamente, garantir a segurança e otimizar o desempenho dos servidores e aplicativos em ambientes corporativos e de produção. Dominar essas técnicas proporciona aos administradores de sistemas as ferramentas necessárias para uma administração eficaz e proativa.
