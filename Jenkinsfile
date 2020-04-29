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
        
     stage ('Exec Maven') {
            steps {
                rtMavenRun (
                    tool: 'M3', // Tool name from Jenkins configuration
                    pom: 'pom.xml',
                    goals: 'clean install'
                )
            }
        }
        stage ('Publish build info') {
            steps {
                rtPublishBuildInfo (
                    serverId: "jfrog"
                )
            }
        }
        stage ('push build') {
            steps {
                rtUpload (
                    serverId: "jfrog",
                    specPath: "http://localhost:8082/artifactory/artifactory-build-info/devpipeline/10-1588175393475.json",
                    failNoOp: true
                )
            }
        }
    }

}