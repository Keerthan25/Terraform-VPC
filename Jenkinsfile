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
        stage ('terraform init') {
            steps {

              sh "terraform init -migrate-state "
            }
        }
        stage ('terraform apply') {
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }
    }
}
