resource "aws_iam_instance_profile" "instance_profile" {
  name = "${var.environment}-${var.application}-instance_profile"

  role = var.iam_role
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = var.instance_count

  iam_instance_profile = "${var.environment}-${var.application}-instance_profile"

  associate_public_ip_address = var.associate_public_ip_address

  vpc_security_group_ids      = var.security_group_ids

  subnet_id                   = element(var.subnet_ids, count.index % length(var.subnet_ids))

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-instance"
      Environment = var.environment
      Owner       = var.owner
      CostCenter  = var.cost_center
      Application = var.application
    },
    var.tags
  )
}