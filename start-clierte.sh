reset
cd inyectar/flask
export FLASK_APP=index.py
export FLASK_ENV=development
echo Levantando servidor ...
echo Ingresar puerto: 
read p
flask run &
echo iniciando tunel ...
ngrok http http://127.0.0.1:$p
reset
echo Cerrando  servidor
cd ../../
kill $(lsof -t -i:5000)


