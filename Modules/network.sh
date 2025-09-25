#!/bin/bash
# Módulo de informações de rede

echo "=== Informações de Rede ==="
echo "IP Local:"
hostname -I
echo ""
echo "IP Externo:"
curl -s ifconfig.me
echo ""
echo "Testando ping no Google..."
ping -c 4 8.8.8.8
echo ""
read -p "Pressione ENTER para voltar ao menu..."
