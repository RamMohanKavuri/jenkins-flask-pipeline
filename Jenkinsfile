pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Building Docker image..."
                sh "docker build -t myflaskapp ."
            }
        }
        stage('Test') {
            steps {
                echo "Testing application with pytest..."
                // Runs pytest inside a fresh container, assumes pytest is installed in your image
                sh "docker run --rm myflaskapp pytest"
            }
        }
        stage('Deploy') {
            steps {
                echo "Running Docker container..."
                sh "docker run -d -p 5000:5000 myflaskapp"
            }
        }
    }
}
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building Docker image..."
                sh "docker build -t myflaskapp ."
            }
        }
        stage('Test') {
            steps {
                echo "Testing application... (add tests as needed)"
            }
        }
        stage('Deploy') {
            steps {
                echo "Running Docker container..."
                sh "docker run -d -p 5000:5000 myflaskapp"
            }
        }
    }
}
