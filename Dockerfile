FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app directory
COPY app/ app/

EXPOSE 8000
# Run using full module path
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
