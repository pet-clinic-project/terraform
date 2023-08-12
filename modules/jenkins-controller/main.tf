resource "aws_security_group" "jenkins_controller_sg" {
  name        = "${var.environment}-${var.application}-controller-sg"
  description = "Security Group for Jenkins Controller"
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = toset(range(length(var.ingress_cidr_from_port)))
    content {
      from_port   = var.ingress_cidr_from_port[ingress.key]
      to_port     = var.ingress_cidr_to_port[ingress.key]
      protocol    = var.ingress_cidr_protocol[ingress.key]
      cidr_blocks = var.ingress_cidr_block
    }
  }

  dynamic "egress" {
    for_each = toset(range(length(var.egress_cidr_from_port)))
    content {
      from_port   = var.egress_cidr_from_port[egress.key]
      to_port     = var.egress_cidr_to_port[egress.key]
      protocol    = var.egress_cidr_protocol[egress.key]
      cidr_blocks = var.egress_cidr_block
    }
  }

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-controller-sg"
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )

}

resource "aws_instance" "jenkins_controller" {
  count                       = var.instance_count
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = element(var.subnet_ids, count.index % length(var.subnet_ids))
  vpc_security_group_ids      = [aws_security_group.jenkins_controller_sg.id]
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-controller"
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}