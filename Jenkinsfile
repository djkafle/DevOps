pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from GitHub
                git branch: 'main', url: 'https://github.com/djkafle/DevOps.git'
            }
        }

        stage('Build') {
            steps {
                // Add build steps here, e.g., compile, test, etc.
                echo 'Building the project...'
            }
        }
        
        stage('Test') {
            steps {
                // Add testing steps here, e.g., running unit tests, etc.
                echo 'Running tests...'
            }
        }
    }

    post {
        success {
            echo 'Build successful!'
            // Send email notification on success
            emailext (
                subject: 'Jenkins Build Successful',
                body: 'The Jenkins build was successful!',
                to: 'you@example.com'
            )
        }
        failure {
            echo 'Build failed.'
            // Send email notification on failure
            emailext (
                subject: 'Jenkins Build Failed',
                body: 'The Jenkins build failed.',
                to: 'you@example.com'
            )
        }
    }
}
