reset
echo Actualizando...
sleep 3
reset
apt update && apt upgrade
reset
echo Instalando recursos...
sleep 3
apt install lolcat python python3 figlet python3-pip
reset
pip3 install Flask
reset
echo ========================
echo Instalacion finalizada..|lolcat -a -d 1
echo ========================
echo
echo Ejecuta primero:|lolcat -a -d 1 
echo
echo ========================
echo sh cliente.sh|lolcat -a -d 1 -i
echo ========================
echo
echo Y en otra terminal:|lolcat -a -d 1 
echo
echo ========================
echo sh server.sh|lolcat -a -d 1 -i
echo ========================


