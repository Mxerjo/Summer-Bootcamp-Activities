from flask import Flask, render_template, request, jsonify
from datetime import datetime

app = Flask(__name__)

def calculate_age(birthdate):
    today = datetime.today()
    birthdate = datetime.strptime(birthdate, '%Y-%m-%d')
    age = today.year - birthdate.year - ((today.month, today.day) < (birthdate.month, birthdate.day))
    return age

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/calculate', methods=['POST'])
def calculate():
    fname = request.form.get('fname')
    mname = request.form.get('mname')
    lname = request.form.get('lname')
    birthdate = request.form.get('birthdate')
    age = calculate_age(birthdate)
    return jsonify(fname=fname, mname=mname, lname=lname, age=age)

if __name__ == '__main__':
    app.run(debug=True)
