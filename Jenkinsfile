pipeline {
agent {
  label 'terraform'
}
    stages{
        stage ('Git Checkout') {
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Keerthan25/Terraform-VPC.git']])
            }
        }
        stage ('terraform init --auto-approve') {
            steps {

              sh '''terraform init'''
            }
        }
        stage ('terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
