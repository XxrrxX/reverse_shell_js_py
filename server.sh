reset
figlet -f slant Reverse Shell|lolcat -a -d 1
figlet -f slant  Servidor|lolcat -a -d 1
figlet -f shadow Code By XxMxX|lolcat -a -d 1

cd server
echo ===============================
echo Iniciando Servidor...|lolcat -a -d 1 -s 1 
echo ===============================
python3 configurar_host.py
python servidor.py
cd ..
