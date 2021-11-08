addr = input('host: ')
h = open('../inyectar/flask/h/host.txt','w')
h.write(addr)
h.close()
