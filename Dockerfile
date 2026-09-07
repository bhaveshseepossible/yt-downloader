FROM python:3.11-slim

# ffmpeg, curl, unzip, nodejs ઇન્સ્ટોલ કરવા માટે
RUN apt-get update && apt-get install -y ffmpeg curl unzip nodejs && \
    curl -fsSL https://deno.land/install.sh | sh

ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "download.py"]
