FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install streamlit
COPY . .
EXPOSE 8501
ENTRYPOINT ["streamlit", "run", "st_clickable_text/__init__.py", "--server.port=8501", "--server.address=0.0.0.0"]
