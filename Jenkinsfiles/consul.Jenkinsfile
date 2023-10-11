@Library('jenkins-shared-library@develop') _

def ECR_IMAGE = '814200988517.dkr.ecr.us-west-2.amazonaws.com/infra-images:terraform-agent-1.0.5'
def PROJECT_DIR = 'apps/consul'
def TF_STATE_FILE = "consul.tfstate"
def TF_VARS_FILE = 'apps/stage/consul.tfvars'
def TF_PLAN_FILE = 'tfplan.binary'
def TF_PLAN_JSON_FILE = 'tfplan.json'
def TFVARS_FILE_PATH = '../../vars/apps/stage/consul.tfvars'
def CHECKOV_CUSTOM_POLICY = 'CUSTOM_AWS_001'
def NOTIFICATION_EMAIL = 'aswin@crunchops.com'

pipeline {
    agent {
        docker {
            image ECR_IMAGE
            args '-v /var/run/docker.sock:/var/run/docker.sock --privileged '
            reuseNode true
        }
    }

    parameters {
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: '')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    terraformInit(
                        projectDirectory: PROJECT_DIR,
                        tfstateFile: TF_STATE_FILE,
                        tfvarsFile: TF_VARS_FILE
                    )
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                script {
                    terraformValidate(
                        projectDirectory: PROJECT_DIR
                    )
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    terraformPlan(
                        projectDirectory: PROJECT_DIR,
                        variableFile: TF_VARS_FILE,
                        planFile: TF_PLAN_FILE,
                        redirectPlanFile: TF_PLAN_JSON_FILE
                    )
                }
            }
        }

        stage('Terraform Lint') {
            steps {
                script {
                    tfLint(
                        projectDirectory: PROJECT_DIR,
                        tfvarsFile: TFVARS_FILE_PATH
                    )
                }
            }
        }

        stage('Checkov Scan') {
            steps {
                script {
                    checkovScan(
                        projectDirectory: PROJECT_DIR,
                        planFileJson: TF_PLAN_JSON_FILE,
                        customPolicy: CHECKOV_CUSTOM_POLICY
                    )
                }
            }
        }
        stage('Terraform Apply') {
            when {
                expression {
                    params.ACTION == 'apply'
                }
            }
            steps {
                script {
                    terraformApply(
                        projectDirectory: PROJECT_DIR,
                        variableFile: TF_VARS_FILE
                    )
                }
            }
        }

        stage('Terraform Destroy') {
            when {
                expression {
                    params.ACTION == 'destroy'
                }
            }
            steps {
                script {
                    terraformDestroy(
                        projectDirectory: PROJECT_DIR,
                        variableFile: TF_VARS_FILE
                    )
                }
            }
        }
    }

    post {
        success {
            script {
                emailNotification.sendEmailNotification('success', NOTIFICATION_EMAIL)
            }
        }
        failure {
            script {
                emailNotification.sendEmailNotification('failure', NOTIFICATION_EMAIL)
            }
        }
    }
}
