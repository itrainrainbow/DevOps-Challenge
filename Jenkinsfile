node {
   
   stage('Code Checkout') { 
     git credentialsId: 'githubID', url: 'https://github.com/itrainrainbow/DevOps-Challenge.git'
     
    }
   stage('Build & UnitTest run') {
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
          sh 'docker tag manee2k6/tradebyte:pyapp manee2k6/tradebyte:pyapp-prod'
          sh 'docker push manee2k6/tradebyte:pyapp-dev'
          sh 'docker push manee2k6/tradebyte:pyapp-prod'
       }
    }
   stage('Deploy to Dev') {
     sh 'oc login --token=IH83WI9I_79p-TkvEMxzBZU5RzZQ0aWTDSmeOjuO0cA --server=https://api.us-east-2.online-starter.openshift.com:6443'
     //sh 'oc new project tradebyte-demo'
     sh 'oc new-app manee2k6/itrainavenger:latest --name python-app'
     sh 'oc expose svc python-app --name=python-app'
     sh 'oc status'
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
