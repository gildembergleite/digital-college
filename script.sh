#!/bin/bash

# Diretório principal
mkdir -p ./conteudo
mkdir -p ./desafios

# Criação das pastas para cada aula (48 aulas)
for i in {1..48}; do
  # Pasta para aulas
  mkdir -p ./conteudo/aula_$i
  touch ./conteudo/aula_$i/README.md
  
  # Pasta para desafios
  mkdir -p ./desafios/aula_$i
  touch ./desafios/aula_$i/README.md
done

echo "Estrutura de pastas criada com sucesso!"
