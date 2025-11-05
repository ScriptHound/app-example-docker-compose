FROM python:3.10-slim

COPY . .
RUN apt-get update && apt-get install -y --no-install-recommends build-essential
ENV MY_VAR=$(mysuperdupervar)
RUN echo "MY_VAR is set to: $MY_VAR"

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["python", "/src/main.py"]
