import os

class Settings:
    PROJECT_NAME: str = "FastAPI App"
    DEBUG: bool = os.getenv("DEBUG", "false").lower() == "true"

settings = Settings()
