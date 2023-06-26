resource "aws_security_group" "prometheus_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
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
    Name        = "prometheus-sg",
    Environment = var.environment,
    Owner       = var.owner,
    CostCenter  = var.cost_center,
    Application = "prometheus"
    },
    var.tags
  )

}

resource "aws_instance" "prometheus" {
  count                       = var.instance_count
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = element(var.subnet_ids, count.index % length(var.subnet_ids))
  vpc_security_group_ids      = [aws_security_group.prometheus_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  tags = merge(
  {
    Name        = "prometheus",
    Environment = var.environment,
    Owner       = var.owner,
    CostCenter  = var.cost_center,
    Application = "prometheus"
    },
    var.tags
  )
}