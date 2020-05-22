pipeline {
  agent any
  stages {
    stage('build docker image') {
      steps {
        sh 'docker build -t project_img .'
      }
    }

    stage('Lint HTML') {
      steps {
        sh 'tidy -q -e *.html'
      }
    }

  }
}