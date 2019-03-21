pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Job configuration') {
            steps {
                step([$class: 'WsCleanup'])
                git 'git@github.com:JBerrB/triad-mkdocs.git'
                sh './mkdockerize.sh stop'
                sh 'docker rmi -f mkdocs:latest'
            }
        }
        stage('Build') {
            steps {
                dir('mkdocs') {
                    sh 'docker build --build-arg PROJECT_NAME=tri-ad -t mkdocs .'
                }
            }
        }
        stage('Test') {
            steps {
                sh './mkdockerize.sh serve'
                dir ('tests') {
                    sh 'nosetests -v nosetests.py --with-xunit --xunit-file=results.xml'
                }
            }
        }
    }
    post {
        always {
            junit 'tests/results.xml'
        }
    }
}
