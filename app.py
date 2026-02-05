from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/")
def home():
    return jsonify(
        message="Hello from Flask in Docker 🚀",
        status="ok"
    )

@app.get("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    # חשוב: host=0.0.0.0 כדי שיהיה נגיש מתוך Docker
    app.run(host="0.0.0.0", port=5000)
