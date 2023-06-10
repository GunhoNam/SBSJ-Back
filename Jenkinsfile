pipeline {
  agent any
  
  stages {
    stage("build") {
      steps {
        echo "build application from Jenkins"
        sh 'pwd'
        sh 'ls'
//         sh './gradlew build'
      }
    }
    
    stage("build image") {
      steps {
        echo "build image from Jenkins"
//         sh 'docker build .'
      }
    }
    
    stage("deploy") {
      steps {
        echo "deploy last test application from Jenkins"
        sh 'docker images'
        sh 'docker ps'
        // sh 'docker --version'

	sh 'docker start sbsj-project-db'
        echo 'deploy have been success!'
	echo 'test completed'
      }
    }
    
  }
}
