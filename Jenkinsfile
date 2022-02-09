pipeline {
	agent any
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/minalchindhe/DockerCI-CD.git'
             
          }
        }
	 stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        

  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t samplewebapp:latest .' 
                sh 'docker tag samplewebapp minal/samplewebapp:latest'
                //sh 'docker tag samplewebapp minal/samplewebapp:$BUILD_NUMBER'
               
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 8003:8080 demo/samplewebapp"
 
            }
        }
    }
	}
    
