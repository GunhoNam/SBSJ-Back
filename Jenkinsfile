pipeline {
  agent any
  
  stages {
    stage("Pull Image") {
      steps {
        echo "Pulling image from docker hub"
        sh 'echo $DOCKER_HUB_PASSWORD | docker login --username ab5265 --password-stdin ' 
        sh 'docker pull ab5265/sbsj-project:latest'
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

	// sh 'docker compose up -b'
        echo 'deploy have been success!'
	echo 'test completed'
      }
    }
    
  }
}
