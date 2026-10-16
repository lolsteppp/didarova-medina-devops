pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Medina'
        STUDENT_SURNAME = 'Didarova'
        STUDENT_GROUP   = 'IT2-2313'
        STUDENT_ID      = '37944'
        IMAGE_NAME      = 'didarova-medina-devops'
        CONTAINER_NAME  = 'didarova-medina-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }

        stage('Build') {
            steps {
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'chmod +x app/*.sh scripts/*.sh'
                sh 'ls -la'
            }
        }

        stage('Test') {
            steps {
                sh 'test -f Didarova_Medina_info.txt'
                sh 'test -f Dockerfile'
                sh 'sh app/test.sh'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
                sh 'docker images $IMAGE_NAME'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker rm -f $CONTAINER_NAME || true'
                sh '''
                    docker run \
                      -e STUDENT_NAME=$STUDENT_NAME \
                      -e STUDENT_SURNAME=$STUDENT_SURNAME \
                      -e STUDENT_GROUP=$STUDENT_GROUP \
                      -e STUDENT_ID=$STUDENT_ID \
                      --name $CONTAINER_NAME \
                      $IMAGE_NAME
                '''
                sh 'docker ps -a --filter name=$CONTAINER_NAME'
            }
        }
    }

    post {
        success { echo 'Pipeline finished successfully!' }
        failure { echo 'Pipeline failed. Check the stage that failed.' }
    }
}
