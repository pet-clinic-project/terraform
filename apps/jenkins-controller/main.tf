provider "aws" {
  region = "us-west-2"
}

module "jenkins-controller" {
    source = "../../modules/jenkins-controller"
}
