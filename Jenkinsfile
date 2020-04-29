pipeline {
    agent any
    stages {
        stage ('Clone') {
            steps {
                git branch: 'dev', url: "https://github.com/praveenvattikuti/endtoend.git"
            }
        }
    stage ('Artifactory configuration') {
            steps {
                rtServer (
                    id: "jfrog",
                    url: "http://localhost:8082/artifactory",
                    credentialsId: "jfrog"
                )
            }
        }
    }
}