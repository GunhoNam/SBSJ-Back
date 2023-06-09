pipeline {
  agent any
  
  stages {
    stage("build") {
      steps {
        echo "build application from Jenkins"
        sh 'pwd'
        sh 'ls'
        sh './gradlew build'
      }
    }
    
    stage("test") {
      steps {
        echo "test application from Jenkins"
      }
    }
    
    stage("deploy") {
      steps {
        echo "deploy last test application from Jenkins"
        sh 'cd build/libs'
        sh 'ls'
        sh 'docker --version'
        sh 'docker build .'
        echo 'deploy been success!'
      }
    }
    
  }
}
