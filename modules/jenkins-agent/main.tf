resource "aws_security_group" "jenkins_agent_sg" {
  name        = "${var.environment}-${var.application}"
  description = "Security Group for Jenkins Agent"
  vpc_id      = var.vpc_id

  # Ingress rules for CIDR blocks
  dynamic "ingress" {
    for_each = var.create_ingress_cidr ? toset(range(length(var.ingress_cidr_from_port))) : []
    content {
      from_port   = var.ingress_cidr_from_port[ingress.key]
      to_port     = var.ingress_cidr_to_port[ingress.key]
      protocol    = var.ingress_cidr_protocol[ingress.key]
      cidr_blocks = var.ingress_cidr_block
    }
  }

  # Ingress rules for Security Groups
  dynamic "ingress" {
    for_each = var.create_ingress_sg ? toset(range(length(var.ingress_sg_from_port))) : []
    content {
      from_port       = var.ingress_sg_from_port[ingress.key]
      to_port         = var.ingress_sg_to_port[ingress.key]
      protocol        = var.ingress_sg_protocol[ingress.key]
      security_groups = var.ingress_security_group_ids
    }
  }

  # Egress rules for CIDR blocks
  dynamic "egress" {
    for_each = var.create_egress_cidr ? toset(range(length(var.egress_cidr_from_port))) : []
    content {
      from_port   = var.egress_cidr_from_port[egress.key]
      to_port     = var.egress_cidr_to_port[egress.key]
      protocol    = var.egress_cidr_protocol[egress.key]
      cidr_blocks = var.egress_cidr_block
    }
  }

  # Egress rules for Security Groups
  dynamic "egress" {
    for_each = var.create_egress_sg ? toset(range(length(var.egress_sg_from_port))) : []
    content {
      from_port       = var.egress_sg_from_port[egress.key]
      to_port         = var.egress_sg_to_port[egress.key]
      protocol        = var.egress_sg_protocol[egress.key]
      security_groups = var.egress_security_group_ids
    }
  }

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-agent-sg"
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
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
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-agent"
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}