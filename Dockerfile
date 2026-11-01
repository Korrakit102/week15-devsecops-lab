
# Week 15 Task 4 — intentionally insecure lab example
FROM python:3.12-slim

WORKDIR /app

COPY sample-service.py /app/sample-service.py

# Intentionally runs as root to trigger Trivy DS-0002 (HIGH).
USER root

CMD ["python", "sample-service.py"]
