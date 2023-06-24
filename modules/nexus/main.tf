resource "aws_security_group" "nexus_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8081
    to_port     = 8081
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
    Name        = "nexus-sg",
    Environment = var.environment,
    Owner       = var.owner,
    CostCenter  = var.cost_center,
    Application = "Nexus_Artifacts_Uploader"
    },
    var.tags
  )

}

resource "aws_instance" "nexus" {
  count                       = var.instance_count
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = element(var.subnet_ids, count.index % length(var.subnet_ids))
  vpc_security_group_ids      = [aws_security_group.nexus_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  tags = merge(
  {
    Name        = "Nexus",
    Environment = var.environment,
    Owner       = var.owner,
    CostCenter  = var.cost_center,
    Application = "Nexsu_Artifacts_Uploader",
    },
    var.tags
  )
}