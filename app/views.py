from datetime import datetime
from flask import Flask, render_template, request
from . import app
import socket

hostname = socket.gethostname()

@app.route("/")
def home():
    return render_template("home.html", hostname=hostname)

@app.route("/about/")
def about():
    return render_template("about.html", hostname=hostname)

@app.route("/contact/")
def contact():
    return render_template("contact.html", hostname=hostname)

@app.route("/hello/")
@app.route("/hello/<name>")
def hello_there(name = None):
    return render_template(
        "hello_there.html",
        name=name,
        date=datetime.now()
    )

@app.route("/api/data")
def get_data():
    return app.send_static_file("data.json")
