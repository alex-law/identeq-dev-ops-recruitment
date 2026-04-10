from app import create_app


def test_healthcheck_endpoint():
    client = create_app().test_client()

    response = client.get("/health")

    assert response.status_code == 200
    assert response.get_json() == {"status": "ok"}


def test_index_returns_service_metadata(monkeypatch):
    monkeypatch.setenv("SERVICE_NAME", "candidate-api")
    monkeypatch.setenv("SERVICE_VERSION", "1.2.3")
    monkeypatch.setenv("AWS_REGION", "eu-west-1")

    client = create_app().test_client()
    response = client.get("/")

    assert response.status_code == 200
    assert response.get_json() == {
        "region": "eu-west-1",
        "service": "candidate-api",
        "status": "running",
        "version": "1.2.3",
    }
