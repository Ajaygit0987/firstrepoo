pipeline {
    agent {label 'master'}
   tools
   {
       maven 'DEFAULT'
   }
        
   
    stages{
        stage('continous download'){
            steps{
                git 'https://github.com/DeekshithSN/webapp.git'
            }
            
        }
        stage('continous build'){
            steps{
                sh 'mvn clean package'
            }
            
        }
        stage('continous deploy'){
            steps{
             deploy adapters: [tomcat9(credentialsId: 'tom', path: '', url: 'http://34.229.155.58:8080')], contextPath: 'deploy', war: '**/*.war'   
            }
            
        }
        stage('continous testing'){
            steps{
             git 'https://github.com/intelliqittrainings/FunctionalTesting.git'
                 sh 'java -jar /var/lib/jenkins/workspace/declarative_pipeline/testing.jar'
            }
            
        }
         stage('continous delivery'){
            steps{
                input message: 'WAITING FOR APPROVAL', submitter: 'admin,abcd'
             sh 'scp /var/lib/jenkins/workspace/declarative_pipeline/target/*.war root@34.229.155.58:/usr/share/tomcat/webapps/deploy.war'
            }
            
        }
    }
    post
    {
        success
        {
            sh 'echo "build sucess"'
            
        }
        
        failure
        {
            mail bcc: '', body: 'bulid failure', cc: 'ajaybb007@gmail.com', from: '', replyTo: '', subject: 'cl/cd', to: 'ajay24in7@gmail.com'
        }
        
        always 
        {
            sh 'echo "Run Always"'
        }
        
        aborted 
        {
          sh 'echo "Build Aborted"'  
        }
    }
}
