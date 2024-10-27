pipeline {
    agent any
    tools {
        nodejs 'NodeJS' // Name of your NodeJS installation in Jenkins
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your GitHub repo
                git url: 'https://github.com/Shiraz-2022/devops.git', branch: 'main'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Install Node.js dependencies
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                // Run the tests from test.js using npm
                sh 'npm test'
            }
        }
    }
    post {
        success {
            echo 'Build and tests were successful!'
        }
        failure {
            echo 'Build or tests failed!'
        }
        always {
            // Optional: Clean up or send notifications
            echo 'Cleaning up...'
        }
    }
}
