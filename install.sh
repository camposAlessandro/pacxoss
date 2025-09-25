#!/bin/bash
# Script de instalação do PACX-OS

echo "🔧 Instalando dependências..."
sudo apt update
sudo apt install -y curl lsb-release

echo "🔧 Dando permissão de execução..."
chmod +x pacx.sh
chmod +x modules/*.sh

echo "✅ Instalação concluída!"
echo "Para iniciar, rode: ./pacx.sh"

