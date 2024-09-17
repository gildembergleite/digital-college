#!/bin/bash

# Caminho das pastas
BASE_DIR="./"
CONTEUDO_DIR="$BASE_DIR/conteudo"
DESAFIOS_DIR="$BASE_DIR/desafios"
ATIVIDADES_DIR="$BASE_DIR/atividades"

# Função para mover e renomear os arquivos README.md de uma pasta para outra
move_rename() {
  local SOURCE_DIR=$1
  local TARGET_DIR=$2
  local FILENAME=$3

  for i in $(seq 1 48); do
    AULA_DIR="aula_$i"
    SRC_FILE="$SOURCE_DIR/$AULA_DIR/README.md"
    DEST_DIR="$TARGET_DIR/$AULA_DIR"
    
    if [ -f "$SRC_FILE" ]; then
      # Criar o diretório de destino, se não existir
      mkdir -p "$DEST_DIR"
      # Mover e renomear o arquivo
      mv "$SRC_FILE" "$DEST_DIR/$FILENAME"
    fi
  done
}

# Mover e renomear README.md da pasta desafios para desafio.md na pasta conteudo
move_rename "$DESAFIOS_DIR" "$CONTEUDO_DIR" "desafio.md"

# Mover e renomear README.md da pasta atividades para atividade.md na pasta conteudo
move_rename "$ATIVIDADES_DIR" "$CONTEUDO_DIR" "atividade.md"

echo "Arquivos movidos e renomeados com sucesso!"
