pipeline {
    agent any
<<<<<<< HEAD
    triggers {
  pollSCM '* * * * *'
}

=======
    tools {
        maven 'M2_HOME'
    }
>>>>>>> befd89f04ca7cf7f2bc51b198db26efdff38dc55

    stages {
       
       stage('build') {
            steps {
                echo 'Hello build'
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
            }
        }
        stage('test') {
            steps {
                echo 'mvn test'
               
            }
        }
       stage ('build and publish image') {
      steps {
        script {
          checkout scm
          docker.withRegistry('', 'DockerRegistryID') {
          def customImage = docker.build("lesliemekawe/hol-pipeline:${env.BUILD_ID}")
          customImage.push()
          }
    }

        
    }
}
    }
}
 stage ( 'deployment trigger'){
          steps {
            build 'hol-CI'
}
}


