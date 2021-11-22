reset
figlet -f slant Reverse Shell|lolcat -a -d 1
figlet -f slant  Cliente|lolcat -a -d 1
figlet -f shadow Code By XxMxX|lolcat -a -d 1
cd inyectar/flask
export FLASK_APP=index.py
export FLASK_ENV=development
echo =============================
echo Iniciando servidor cliente...|lolcat -a -d 1 -s 1
echo =============================
sleep 3
reset
flask run &
echo =============================
echo iniciando tunel ...|lolcat -a -d 1 -s 1
echo =============================
sleep 3
ngrok http http://127.0.0.1:5000 
reset
echo =============================
echo Cerrando  servidor...|lolcat -a -d 1 -s 1
echo =============================
cd ../../
kill $(lsof -t -i:5000)
figlet -f slant Bye Bye!|lolcat -a -d 1

