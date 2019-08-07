node {
   
   stage('Code Checkout') { 
     git credentialsId: 'githubID', url: 'https://github.com/itrainrainbow/DevOps-Challenge.git'
     
    }
   stage('Build') {
     sh 'pwd'
    }
   stage('Unit Test run') {
      withEnv(['UNIT_TEST=/tests']) {
        sh '$UNIT_TEST python test.py'
      }
   }
   stage('Code analysis'){
     
    }
  stage("Quality Gate"){
          
    }
   stage('Build Docker Image') {
    
   }
   stage('Deploy to Dev') {
     
   }
   stage('Automation Testing') {
     
   }
   stage('Deploy to Test') {
     
   }
   stage('Smoke Testing') {
     
    }
   stage('Deploy to Prod') {
     
    }
   stage('Acceptance Testing') {
     
    }
}
