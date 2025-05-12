#!/bin/bash

# Colors
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Display the menu
show_menu() {
    echo -e "${GREEN}Nmap Scan Menu:${NC}"
    echo "1) Normal scan (nmap <IP>)"
    echo "2) Fast scan (nmap -F <IP>)"
    echo "3) Full port scan (nmap -p- <IP>)"
    echo "4) Version detection scan (nmap -sV <IP>)"
    echo "5) OS detection scan (nmap -O <IP>)"
    echo "6) Aggressive scan (nmap -A <IP>)"
    echo "7) Stealth SYN scan (nmap -sS <IP>)"
    echo "8) UDP scan (nmap -sU <IP>)"
    echo "9) FTP script scan (nmap --script ftp* <IP>)"
    echo "10) SMB script scan (nmap --script smb* <IP>)"
    echo "11) Custom scan"
    echo "0) Exit"
    echo ""
}

# Main loop
while true; do
    show_menu
    read -p "Select a scan option (0-11): " option

    if [[ "$option" == "0" ]]; then
        echo "Exiting."
        exit 0
    fi

    read -p "Enter target IP or hostname: " target

    case $option in
        1)
            nmap "$target"
            ;;
        2)
            nmap -F "$target"
            ;;
        3)
            nmap -p- "$target"
            ;;
        4)
            nmap -sV "$target"
            ;;
        5)
            sudo nmap -O "$target"
            ;;
        6)
            sudo nmap -A "$target"
            ;;
        7)
            sudo nmap -sS "$target"
            ;;
        8)
            sudo nmap -sU "$target"
            ;;
        9)
            sudo nmap --script ftp* "$target"
            ;;
        10)
            sudo nmap --script smb* "$target"
            ;;
        11)
            read -p "Enter your custom Nmap options (e.g., -sC -p 21,445): " custom_opts
            nmap $custom_opts "$target"
            ;;
        *)
            echo "Invalid option. Please choose a number between 0 and 11."
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
    clear
done
