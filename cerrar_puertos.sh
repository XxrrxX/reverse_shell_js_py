reset
echo Cerrar puertos
echo Puerto :
read p
kill $(lsof -t -i:$p)
echo Puerto cerrado
