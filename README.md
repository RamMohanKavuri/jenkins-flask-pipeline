# Jenkins-Flask-Pipeline

This project demonstrates a basic Flask web application containerized with Docker and automated using Jenkins CI/CD pipeline.

## Features

- Flask application serving a simple web page
- Dockerized for easy deployment
- Jenkinsfile defining pipeline stages: build, test, deploy
- Automated build and deployment on each git commit

## Setup Instructions

1. Clone the repository
2. Build Docker image:docker build -t myflaskapp .
3. Run Docker container:docker run -d -p 5000:5000 myflaskapp
4. Configure Jenkins to use the included Jenkinsfile for CI/CD

## Jenkins Pipeline

The Jenkinsfile includes stages to:

- Build docker image
- (Optional) Run tests
- Deploy docker container

## Access

You can access the running Flask app at: http://<your-ec2-public-ip>:5000

---
