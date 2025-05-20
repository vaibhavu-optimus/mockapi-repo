from fastapi import FastAPI
from app.api.routes import router

app = FastAPI(title="FastAPI Example")

app.include_router(router)

@app.get("/")
def read_root():
    return {"message": "Welcome to FastAPI!"}
