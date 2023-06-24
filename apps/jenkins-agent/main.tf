provider "aws" {
  region = "us-west-2"
}

module "jenkins-agent" {
    source = "../../modules/jenkins-agent"
}
