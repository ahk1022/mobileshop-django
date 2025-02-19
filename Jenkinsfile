pipeline {
    agent { label: "ahk"}

    stages {
        stage('code') {
            steps {
                echo 'code stage'
                git url:"https://github.com/ahk1022/mobileshop-django.git", branch:"master"
                echo "code clone sucessfully"
            }
        }
        stage('build') {
            steps {
                echo 'build stage'
                sh "docker build . -t mobileshop:latest"
                echo "code clone sucessfully"
            }
        }
        stage('test') {
            steps {
                echo 'test stage'
            }
        }
        stage('deploy') {
            steps {
                echo 'deploy stage'
                sh "docker run -d -p 8000:8000 mobileshop:latest python manage.py runserver 0.0.0.0:8000"
                echo "code deployed sucessfully"
            }
        }
    }
}
