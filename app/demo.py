import os
import bcrypt
from os import environ
from flask import Flask,render_template,url_for,flash,redirect,request,session
from flask_mysqldb import MySQL,MySQLdb
from flask import jsonify,json
from forms import RegistrationForm
from flask.ext.ldap import LDAP
app = Flask(__name__)
users = list(range(100))


app.config['LDAP_HOST'] = 'ldap.example.com'
app.config['LDAP_DOMAIN'] = 'example.com'
app.config['LDAP_SEARCH_BASE'] = 'OU=Domain Users,DC=example,DC=com'

ldap = LDAP(app)


app.config['SECRET_KEY']='584bd72428c13cfb572da08954dd5944de5a4219ad2b79eaadbee5bcefa19b14'

app_on = os.getenv("APP_URL")
home_on = os.getenv("HOME_PORT")
vendor_on = os.getenv("VENDOR_PORT")
invoice_on = os.getenv("INVOICE_PORT")
purchase_on = os.getenv("PURCHASE_PORT")
trainer_on = os.getenv("TRAINER_PORT")


db_host=os.getenv("DB_HOST")
home_url = (app_on) + ":" + (home_on)
vendor_url = str(app_on) + ":" + str(vendor_on)
invoice_url = str(app_on) + ":" + str(invoice_on)
purchase_url = str(app_on) + ":" + str(purchase_on)
trainer_url = str(app_on) + ":" + str(trainer_on)
#print(app_url)
var1 = [app_on + ":" + home_on,app_on + ":" + vendor_on,app_on + ":" + invoice_on,app_on + ":" + purchase_on,app_on + ":" + trainer_on]



# Configure db

app.config['MYSQL_HOST'] = db_host
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'flasktab'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'



#app.config['MYSQL_HOST'] = "18.206.224.217"
#app.config['MYSQL_USER'] = 'root'
#app.config['MYSQL_PASSWORD'] = 'password'
#app.config['MYSQL_DB'] = 'ams'



mysql = MySQL(app) 

@app.route("/register",methods=['GET','POST'])
def register():
    form=RegistrationForm()
    if request.method == 'POST':
        # Fetch form data
        userDetails = request.form
        name= userDetails['name']
        email = userDetails['email']
        password = userDetails['password'].encode('utf-8')
        hash_password = bcrypt.hashpw(password, bcrypt.gensalt())


        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO users(name,email,password) VALUES(%s, %s, %s)",(name,email,hash_password))
        mysql.connection.commit()
        cur.close()
        session['name'] = request.form['name']
        session['email'] = request.form['email']
        return redirect(url_for('login'))
    return render_template('register.html',var1=var1,form=form) 


@app.route("/")
@app.route("/login", methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password'].encode('utf-8')

        curl = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        curl.execute("SELECT name,password FROM users WHERE email=%s",(email,))
        user = curl.fetchone()
        curl.close()

        if len(user) > 0:
            if bcrypt.hashpw(password, user["password"].encode('utf-8')) == user["password"].encode('utf-8'):
                session['email'] = user['email']
                session['name'] = user['name']
                return render_template("register.html",var1=var1)
            else:
                return "Error password and email not match"
        else:
            return "Error user not found"   
    
    return render_template('login.html',var1=var1)  

























