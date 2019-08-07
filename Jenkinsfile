node {
   
   stage('Code Checkout') { 
     git credentialsId: 'githubID', url: 'https://github.com/itrainrainbow/DevOps-Challenge.git'
     
    }
   stage('Build') {
     sh 'pwd'
    }
   stage('Unit Test run') {
     sh 'pytest tests/test.py'
    }
   stage('SonarQube Analysis'){
     def scannerHome = tool 'pythonscanner';
     withSonarQubeEnv('SonarQube'){
         //sh "python hello.py sonar:sonar"
     }
    
    }
  stage("Quality Gate"){
          
    }
   stage('Build Docker Image') {
    def app = docker.build "manee2k6/tradebyte:pyapp"
   }
   
   stage("Tag & Push image"){
      withDockerRegistry([credentialsId: 'dockerID',url: ""]) {
          sh 'docker tag manee2k6/tradebyte:pyapp manee2k6/tradebyte:pyapp-dev'
          sh 'docker push manee2k6/tradebyte:pyapp-dev'
       }
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
