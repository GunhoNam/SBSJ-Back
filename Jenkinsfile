pipeline {
  agent any
  
  stages {
    stage("build") {
      steps {
        echo "build application from Jenkins"
        sh 'pwd'
        sh 'ls'
//         sh 'git fetch'
//         sh 'git pull'
//         sh 'docker compose build'
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
        sh 'docker images'
      }
    }
    
  }
}
