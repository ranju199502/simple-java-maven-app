pipeline {
    agent {
        label 'docker-agent-alpine'
    }
    
    // tools{
    //     maven 'maven_3.8.5'
    // } 
    
    stages {
        stage('Build') { 
            tools{
                maven 'maven_3.8.5'
            }
            steps {
                // sh 'echo PATH: $PATH'
                // sh 'echo start building with mvn, skipping test'
                // sh 'mvn -B -DskipTests clean package'
                sh "echo PATH: $PATH"
                sh "echo maven version: $(mvn --version)"
                sh "echo start building with mvn, skipping test"
                sh "mvn -B -DskipTests clean package"
                
            }
        }
    }
}
