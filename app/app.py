from flask import Flask
import os

app = Flask(__name__)
app_host = os.getenv("APP_HOST", "0.0.0.0")
app_port = int(os.getenv("APP_PORT", 5000))

@app.route("/")
def hello():
    return "Hello, World!"


if __name__ == "__main__":
    app.run(host=app_host, port=app_port)
