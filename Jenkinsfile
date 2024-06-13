pipeline {
    agent any

    environment {
        ARM_SUBSCRIPTION_ID = '005ccd00-654a-48a2-a3ef-ee990b504e9b'
        ARM_CLIENT_ID       = '97e3f051-e3db-4bb4-87b0-207f965750c6'
        ARM_CLIENT_SECRET   = 'XGe8Q~MOId-hIomQ5GtzebHlu_WqvYjRcW4FWaOT'
        ARM_TENANT_ID       = 'bf4a0561-a67c-4f99-99d6-4126cc81f773'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Fozia1910/project6.git'
            }
        }
        stage('Terraform Init') {
            steps {
                dir('project6') {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan & Apply') {
            steps {
                dir('project6') {
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}
