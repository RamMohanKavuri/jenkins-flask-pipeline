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
    
    post {
        success {
            emailext (
                to: 'rammohankavuri1103@gmail@.com',
                subject: '${PROJECT_NAME} - Build Notification',
                body: '${SCRIPT, template="buildStatusTemplate"}'
            )
        }
        failure {
            emailext (
                to: 'rammohankavuri1103@gmail.com',
                subject: '${PROJECT_NAME} - Build Failed',
                body: '${SCRIPT, template="buildStatusTemplate"}'
            )
        }
    }
}

        
