

# 🎵 YouTube MP3 Downloader (Dockerized)

A lightweight and easy-to-use YouTube Audio Downloader built with **Python 3.10**, **yt-dlp**, and **FFmpeg**, fully containerized with **Docker**.

---

## 🚀 Quick Start (Using Docker)

You don't need Python or FFmpeg installed on your machine! Just run the Docker container directly:

```bash
docker run -it --rm -v $(pwd):/app bhaveshseepossible/yt-downloader:latest

```

### 🔹 Command Parameters Breakdown:

* `-it`: Runs in interactive mode to take input for YouTube URL.
* `--rm`: Automatically removes the container after the download finishes.
* `-v $(pwd):/app`: Mounts your current directory to save the downloaded `.mp3` file directly on your local machine.

---

## 🛠️ Local Setup & Build

If you want to clone this repository and build the Docker image locally:

```bash
# 1. Clone the repository
git clone https://github.com/bhaveshseepossible/yt-downloader.git
cd yt-downloader

# 2. Build the Docker image
docker build -t yt-downloader .

# 3. Run the container
docker run -it --rm -v $(pwd):/app yt-downloader

```

---

## 📁 Repository Structure

```text
.
├── Dockerfile          # Docker image configuration (Python + FFmpeg)
├── download.py         # Main Python script utilizing yt-dlp
├── requirements.txt    # Python dependencies
├── .gitignore          # Ignores venv/ and .mp3 files
└── README.md           # Documentation

```

---

## 🐳 Docker Hub Repository

Docker Image: [bhaveshseepossible/yt-downloader](https://www.google.com/search?q=https://hub.docker.com/r/bhaveshseepossible/yt-downloader)

```bash
# 1. v1 is latest tag
sudo docker tag bhaveshseepossible/yt-downloader:v1 bhaveshseepossible/yt-downloader:latest

# 2. Push latest tag on Docker Hub  
sudo docker push bhaveshseepossible/yt-downloader:latest

```

