#!/bin/bash

# Diretórios
mkdir -p ./conteudos
mkdir -p ./desafios
mkdir -p ./atividades

# Criação das pastas para cada aula (48 aulas)
for i in {1..48}; do
  # Pasta para aulas
  mkdir -p ./conteudos/aula_$i
  touch ./conteudos/aula_$i/README.md
  
  # Pasta para desafios
  mkdir -p ./desafios/aula_$i
  touch ./desafios/aula_$i/README.md

  # Pasta para atividades
  mkdir -p ./atividades/aula_$i
  touch ./atividades/aula_$i/README.md
done

echo "Estrutura de pastas criada com sucesso!"
