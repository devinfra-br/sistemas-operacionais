# Comandos básicos do Linux


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

### Comando `cat`

O comando `cat` é utilizado para concatenar arquivos e exibir seu conteúdo no terminal. Além disso, ele pode ser usado para criar novos arquivos e também para combinar o conteúdo de arquivos.

**Sintaxe básica:**
```sh
$ cat nome_do_arquivo
```

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
### Comando `pwd`

O comando `pwd` (print working directory) é utilizado para imprimir o diretório atual em que você está trabalhando no terminal.

**Sintaxe básica:**
```sh
$ pwd
```

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
### Comando `touch`

O comando `touch` é utilizado para criar arquivos vazios ou atualizar o timestamp de acesso e modificação de um arquivo existente.

**Sintaxe básica:**
```sh
$ touch [nome_do_arquivo]
```    
 