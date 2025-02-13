# Flask CI/CD Pipeline 🚀

This repository contains a simple **Flask application** with built-in test cases and CI/CD integration using **GitHub Actions** and **Docker**.

## Features 🎯
- ✅ Minimal Flask API with a single endpoint (`/`)
- ✅ Automated testing using `pytest`
- ✅ Docker containerization
- ✅ GitHub Actions workflow to build and push the image to Docker Hub on every commit

## Getting Started 💻

### **1. Clone the Repository**
```sh
git clone https://github.com/tonybhaskar/flask-ci-cd-pipeline.git
cd flask-ci-cd-pipeline
```

### **2. Create a Virtual Environment (Optional)**
```sh
python -m venv venv
source venv/bin/activate  # On macOS/Linux
venv\Scripts\activate  # On Windows
```

### **3. Install Dependencies**
```sh
pip install -r requirements.txt
```

### **4. Run the Flask Application**
```sh
python app.py
```
The app will be available at `http://localhost:5000`.

---

## Running Tests 🧪
This app includes test cases to ensure everything works correctly.

Run the tests with:
```sh
pytest test_app.py
```

---

## Docker Setup 💪🐳

### **1. Build the Docker Image**
```sh
docker build -t flask-app .
```

### **2. Run the Container**
```sh
docker run -p 5000:5000 flask-app
```

---

## CI/CD Pipeline ⚙️
The GitHub Actions workflow is set up to:
1. Build the Docker image
2. Push it to **Docker Hub** on every commit

### **Setting Up GitHub Secrets**
Go to **Settings → Secrets and variables → Actions**, and add:
- **DOCKER_USERNAME** → Your Docker Hub username
- **DOCKER_PASSWORD** → Your Docker Hub password or access token

---

## Deployment 🚀
Once the GitHub Action runs successfully, you can pull and run the latest version of the image from Docker Hub:
```sh
docker pull your-dockerhub-username/flask-app:latest
docker run -p 5000:5000 your-dockerhub-username/flask-app
```

---

## Contributing 🤝
Feel free to contribute! Fork the repo, create a feature branch, and submit a pull request.

---

## License 📚
This project is licensed under the **MIT License**.

---

🔹 **Author:** [Tony Bhaskar](https://github.com/tonybhaskar)  
🔹 **GitHub:** [tonybhaskar/flask-ci-cd-pipeline](https://github.com/tonybhaskar/flask-ci-cd-pipeline)
