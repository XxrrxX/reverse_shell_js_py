reset
cd inyectar/flask
export FLASK_APP=index.py
export FLASK_ENV=development
echo Iniciando cliente ...
echo Ingresar puerto: 
read p
#kill $(lsof -t -i:5000)
#kill $(lsof -t -i:$p)
flask run &
reset
echo iniciando tunel ...
ngrok http http://127.0.0.1:$p &
reset
cd ../../

cd server/
python3 configurar_host.py
python servidor.py
cd ..
reset
kill $(lsof -t -i:5000)
kill $(lsof -t -i:$p)
