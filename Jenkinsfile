pipeline {
  agent {
    docker {
      image 'docker:latest'
      label 'a1'
      args 'root:root'
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
