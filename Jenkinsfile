pipeline {
    agent any
    triggers {
  pollSCM '* * * * *'
}


    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
 stage ( 'deployment trigger'){
          steps {
            build 'hol-CI'
}
}


