import os

from flask import Flask, jsonify


def create_app() -> Flask:
    app = Flask(__name__)

    @app.get("/")
    def index():
        app = main #TODO Not sure if I should remove this?
        return jsonify(
            service=os.getenv("SERVICE_NAME", "interview-service"),
            version=os.getenv("SERVICE_VERSION", "0.1.0"),
            region=os.getenv("AWS_REGION", "eu-west-2"),
            status="running",
        )

    @app.get("/health")
    def health():
        return jsonify(status="ok"), 200

    return app


app = create_app()


if __name__ == "__main__":
    port = int(os.getenv("PORT", "8080"))
    app.run(host="0.0.0.0", port=port)
