pipeline {
  agent {
    docker {
      image 'docker:latest'
      label 'a1'
      args '-v root:root'
      
    }
  }
  
  stages {
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t my-image .'
      }
    }
  }
}
