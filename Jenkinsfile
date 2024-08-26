pipeline {
    agent any

    stages {
        stage('test') {
            steps {
                sh 'echo hello'
            }
        }
        stage('test1') {
            steps {
                sh 'echo $TEST'
            }
        }
        stage('test3') {
            steps {
                script {

                    if (env.BRANCH_NAME == 'main') {
                        echo 'I only execute on the master branch'
                    } else if(env.BRANCH_NAME == 'dev'){
                        echo 'I only execute on dev'
                    }
                        else {
                            echo 'There is a failure'

                    }
                }
            }
        }
    }
}
