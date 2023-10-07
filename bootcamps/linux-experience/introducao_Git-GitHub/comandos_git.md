# Comandos aprendidos durante o curso

 - ssh-keygen -t ed25519 -C "seuemail@gmail.com"
 Gera as chaves para o email vinculado ao GitHub, deve-se pegar a chave pública gerada e adicionar as configurações no GitHub

 - eval $(ssh-agent -s)
 Inicia o serviço ssh, após isso, deve-se vincular com a chave privada que foi gerada junto com a pública (ssh-add chave)

 - git init 
 Inicia o git e adiciona o diretório .git ao local em que estiver. 

 - git config --global  user.email "seuemail@gmail.com"
 - git config --global  user.name "seu nickname, ou nome"
 Seta as configurações padrões que será usado para os commits, com nome e email, deixando pré configurado para começar seus commits.

 - git add * ou git add -a
 Adiciona os arquivos da sua pasta ao staged, ou seja, prontos para serem comitados.

 - git status
 Use sempre para verificar o status dos arquivos, para ter certeza se não há nada pendente a ser feito, seja uma adição ou commit.

 - git commit -m "Primeiro Commit"
 O commit deixa tudo no seu repositório local no git, prontos para serem enviados ao diretório remoto (GITHUB)

 - git remote add origin 'link do repositório no github'
 - git remote -v
 define/vincula o diretório que será usado no github para enviar seus arquivos.
 verifica diretório vinculado.

 - git push origin master (ou main)
 "Empurra" todos os commits para o diretório no GitHUb, fazendo seu upload com todas informações e alterações feitas.

 - git pull origin master 
 Usado para puxar o diretório do GitHub para sua máquina local, a fim de obter a versão mais atual do projeto que estiver trabalhando.
 Normalmente usado em projetos em que mais de uma pessoa esteja trabalhando nele.

 - git clone 'link repositório'
 Literalmente usado para "clonar" ou melhor, copiar um projeto para sua máquina local.