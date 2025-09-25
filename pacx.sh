#!/bin/bash

# PACX-OS - Sistema modular em shell
# Autor: Você

# Cores
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # sem cor

# Função para exibir o menu
menu() {
    clear
    echo -e "${CYAN}=====================================${NC}"
    echo -e "       🐚 Bem-vindo ao PACX-OS"
    echo -e "${CYAN}=====================================${NC}"
    echo ""
    echo -e "${GREEN}1)${NC} Informações de Rede"
    echo -e "${GREEN}2)${NC} Informações do Sistema"
    echo -e "${GREEN}3)${NC} Sair"
    echo ""
    read -p "Escolha uma opção: " opt

    case $opt in
        1) bash modules/network.sh ;;
        2) bash modules/system.sh ;;
        3) echo "Saindo..."; exit 0 ;;
        *) echo -e "${RED}Opção inválida!${NC}"; sleep 1 ;;
    esac
}

# Loop infinito até o usuário sair
while true; do
    menu
done
