pipeline {
  agent {
    docker {
      image 'docker:latest'
      label 'a1'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
      
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
