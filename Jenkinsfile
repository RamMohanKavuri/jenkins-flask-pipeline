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
