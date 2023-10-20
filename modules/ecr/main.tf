resource "aws_ecr_repository" "ecr_repositories" {
  for_each = toset(var.repository_names)

  name                 = each.value
  image_tag_mutability = var.image_mutability

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-repository"
      Environment = var.environment
      Owner       = var.owner
      CostCenter  = var.cost_center
      Application = var.application
    },
    var.tags
  )
}
