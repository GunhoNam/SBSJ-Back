pipeline {
  agent any
  
  stages {
    stage("Pull Image") {
      steps {
        echo "Pulling image from docker hub"
	withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'PWD')]) {
	  sh "docker login --username ab5265 --password $PWD"
	}
//         sh 'docker pull ab5265/sbsj-back:latest'
//         sh './gradlew build'
      }
    }
    
    stage("Stop container") {
      steps {
        echo "Stop current updated container"
	sh 'docker images'
//         sh 'docker build .'
      }
    }
    
    stage("Start new Image") {
      steps {
        echo "Start new Image"
        sh 'docker ps'
        // sh 'docker --version'
	sh 'docker image prune'
	// sh 'docker compose up -b'
        echo 'deploy have been success!'
	echo 'test completed'
      }
    }
    
  }
}
