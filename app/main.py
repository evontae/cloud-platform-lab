from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "healthy"}

@app.get("/api/services")
def services():
    return {
        "services": [
            {"name": "api-gateway", "status": "running"},
            {"name": "auth-service", "status": "running"},
            {"name": "database", "status": "degraded"}
        ]
    }