#!/bin/bash
# Módulo de informações do sistema

echo "=== Informações do Sistema ==="
echo "Usuário: $USER"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Distribuição: $(lsb_release -d 2>/dev/null | cut -f2)"
echo ""
df -h | grep '^/dev/'
echo ""
read -p "Pressione ENTER para voltar ao menu..."
