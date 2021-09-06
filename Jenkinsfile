pipeline {
    agent {
        docker {
            image 'maven:3' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('maven build') { 
            steps {
                sh 'mvn clean package' 
            }
        }
        stage('docker build') {
            steps {
                sh 'docker build -t infrrd/spring-SpringBootMavenExample:latest .
            }
        }
    }
}
