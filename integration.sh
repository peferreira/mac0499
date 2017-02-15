#!/bin/bash

echo "Integração do web site TCC - pedro 2017"

make clean -C ./template/
make pdf -C ./template/
cp ./monografia_template.pdf ./monografia.pdf
echo "Push no repositorio git, forneça a senha"
git push 
make clean -C ./template/
echo "pull no repositorio remoto da rede linux, forneca senha da rede linux"
ssh pfa@linux.ime.usp.br git -C /home/bcc/pfa/www/mac0499/ pull


