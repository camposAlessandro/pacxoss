#!/bin/bash
# Web Info

read -p "Digite o site (ex: google.com): " site

echo "=== Informações do site $site ==="
echo "IP: $(dig +short $site)"
echo "Status HTTP: $(curl -o /dev/null -s -w "%{http_code}\n" http://$site)"
echo "=============================="
read -p "Pressione Enter para voltar..."
