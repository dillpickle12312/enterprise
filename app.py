from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/about')
def about():
    return render_template("about.html")

@app.route('/dashboard')
def dashboard():
    return render_template("dashboard.html")

@app.route('/survey')
def survey():
    return render_template("survey.html")

@app.route('/health')
def health():
    return {"status": "healthy", "message": "Application is running"}, 200

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 10000))
    app.run(debug=False, host='0.0.0.0', port=port)