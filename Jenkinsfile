pipeline {
  agent any
  stages {
    
    stage('Lint HTML') {
      steps {
        sh 'tidy -q -e *.html'
      }
    }    
    
     stage('Lint dockerfile') {
        steps {
            sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
        }
    }
    stage('build docker image') {
      steps {
        sh 'docker build -t project_img .'
      }
    }
    stage('docker container run ') {
      steps {
        sh 'docker container run --name project7 -p 8000:80 project_img'
      }
    }    



  }
}
