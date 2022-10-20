String branchName = "feature"
String gitCredentials = "GITHUB"
String repoUrl = "https://github.com/AnubhavSingh1801/terraform-test.git"

pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {

            stage('Clone') {
                // Clones the repository from the current branch name
                echo 'Make the output directory'
                sh 'mkdir -p build'

                echo 'Cloning files from (branch: "' + branchName + '" )'
                dir('build') {
                    git branch: branchName, credentialsId: 	gitCredentials, url: repoUrl
                }     
            } 

            // stage('Terraform Init') {
            //     steps {
            //         script{
            //             dir("terraform")
            //             {
            //                 git "https://github.com/AnubhavSingh1801/terraform-test.git"
            //             }
            //         }
            //     }
            // }
    }
}
