# scripts-linux-iac

Repositório de scripts para provisionamento de recursos Linux.

- :one: Permissões `permissions-iac.sh`
  -   cria usuarios
  -   cria grupos
  -   estabelece permissões para usuarios e grupos
- :two: Web Server Apache - `apache2.sh`  
  - atualiza o servidor
  - instala o apache2
  - instala wget
  - instala unzip
  - download de artefato gerado no git release do build (minificado e otimizado para produção) uma aplicação em arquivo.zip.
  - copia arquivos gerados do diretorio unzip para htdocs em apache2 server
