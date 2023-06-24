resource "aws_security_group" "jenkins_agent_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    {
    Name        = "jenkins-agent-sg",
    Environment = var.environment,
    Owner       = var.owner,
    CostCenter  = var.cost_center,
    Application = "jenkins_agent"
      },
    var.tags
  )

}

resource "aws_instance" "jenkins_agent" {
  count                       = var.instance_count
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = element(var.subnet_ids, count.index % length(var.subnet_ids))
  vpc_security_group_ids      = [aws_security_group.jenkins_agent_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  tags = merge(
    {
      Name        = "jenkins_agent",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = "jenkins_agent"
    },
    var.tags
  )
}