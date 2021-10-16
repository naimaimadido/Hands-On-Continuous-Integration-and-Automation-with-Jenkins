pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
      }
    }

    stage('Test Firefox') {
      parallel {
        stage('Test Firefox') {
          steps {
            sh 'echo \'Test Firefox\''
          }
        }

        stage('Test Chrome') {
          steps {
            sh 'echo \'Test chrome\''
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