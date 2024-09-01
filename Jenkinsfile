pipeline { 
      agent {
            node {
            //image 'gradle:jdk11'
            label 'w2'
                 }
           }
      stages {
        stage('Clone GIT repo') {
          steps {
            git 'https://github.com/satyendra1/simple-gradle-java-app.git'
            sh 'echo cloning git repository done'
            sh 'pwd'
            sh 'ls -lrths'
          }
}

        stage ('build creation') {
            steps {
                sh "chmod +x gradlew"
                sh "./gradlew build"
                sh 'ls -lrths ./build/*'
            }
            }
        stage ('docker image  creation') {
            tools {
                 dockerTool 'docker' 
                  }
            steps {
                sh 'echo Hi'
                sh "podman build -t santyrocker/app:jenkins-${JOB_NAME}-${BUILD_NUMBER} ."
                  }
        }    
        }
      }
