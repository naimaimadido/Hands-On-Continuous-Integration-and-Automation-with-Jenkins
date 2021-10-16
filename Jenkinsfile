pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
      }
    }

    stage('Test') {
      parallel {
        stage('Test Firefox') {
          steps {
            sh 'echo \'Test Firefox\''
          }
        }

        stage('Test Chrome') {
          steps {
            sh 'echo \'Test chrome\'; exit 1'
            
          }
        }

        stage('Test Edge') {
          steps {
            sh 'echo \'Test Edge\''
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying...'
      }
    }

  }
}
