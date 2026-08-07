# Python ની ઓફિશિયલ ઇમેજ વાપરો
FROM python:3.10-slim

# FFmpeg અને જરૂરી ટૂલ્સ ઇન્સ્ટોલ કરો
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# વર્કિંગ ડિરેક્ટરી સેટ કરો
WORKDIR /app

# requirements.txt કોપી કરો અને Python લાઇબ્રેરી ઇન્સ્ટોલ કરો
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# સ્ક્રિપ્ટ અને બીજી ફાઇલો કોપી કરો
COPY . .

# કન્ટેનર ચાલે એટલે સ્ક્રિપ્ટ રન થાય
CMD ["python", "download.py"]
