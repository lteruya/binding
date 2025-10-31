#!/bin/bash

# Define a versão do Flutter que você quer usar
# Você pode encontrar as versões em: https://docs.flutter.dev/development/tools/sdk/releases
FLUTTER_VERSION="3.22.2"

# Clona o repositório do Flutter (se já não estiver em cache)
if [ ! -d "flutter" ]; then
  echo "--- Clonando Flutter SDK $FLUTTER_VERSION ---"
  git clone https://github.com/flutter/flutter.git -b $FLUTTER_VERSION --depth 1
else
  echo "--- Usando Flutter SDK em cache ---"
fi

# Adiciona o Flutter ao PATH do ambiente de build
export PATH="$PATH:`pwd`/flutter/bin"

# Verifica a instalação e habilita a web
flutter doctor
flutter config --enable-web

echo "--- Instalação do Flutter concluída ---"