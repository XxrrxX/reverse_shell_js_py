from flask import Flask, render_template
import cliente


app = Flask(__name__)

@app.route('/')
def principal():
 return render_template('conectar.html')
@app.route('/conectado')
def conectado():
 cliente.conectar()

if __name__=='__mind__':
 app.run()

