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
            sh 'docker run --rm -i hadolint/hadolint --ignore DL3003 --ignore DL3006 < Dockerfile'
        }
    }
    stage('Build docker image') {
      steps {
        sh 'docker build -t project_img .'
      }
    }
    stage('Push image to Cloud') {
      steps {
        pass
      }
    }  
    stage('Set current kubectl') {
      steps {
        pass
      }
    }
    stage('Deploy Container') {
      steps {
        pass
      }
    }    
    stage('docker container run ') {
      steps {
        sh 'docker container run --name project7 -p 8000:80 project_img'
      }
    }    



  }
}
