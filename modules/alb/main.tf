resource "aws_alb" "application_load_balancer" {
  name               = "${var.environment}-${var.application}-alb"
  internal           = var.internal
  load_balancer_type = var.loadbalancer_type

  subnets         = var.alb_subnets
  security_groups = var.security_group_ids

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-alb",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}

resource "aws_alb_target_group" "alb_tg" {
  name_prefix = "alb-tg"
  port        = var.target_group_port
  protocol    = var.target_group_protocol
  vpc_id      = var.vpc_id
  target_type = var.target_type

  health_check {
    path                = var.health_check_path
    port                = var.health_check_port
    protocol            = var.health_check_protocol
    interval            = var.health_check_interval
    timeout             = var.health_check_timeout
    healthy_threshold   = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
  }

  load_balancing_algorithm_type = var.load_balancing_algorithm

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-alb-target-group"
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}

resource "aws_alb_listener" "https_application_listener" {
  load_balancer_arn = aws_alb.application_load_balancer.arn
  port              = var.https_listener_port
  protocol          = var.https_listener_protocol

  ssl_policy = var.https_listener_ssl_policy

  certificate_arn = var.acm_certificate_arn

  default_action {
    target_group_arn = aws_alb_target_group.alb_tg.arn
    type             = var.https_listener_type
  }
}

resource "aws_alb_listener" "http_application_listener" {
  load_balancer_arn = aws_alb.application_load_balancer.arn
  port              = var.http_listener_port
  protocol          = var.http_listener_protocol

  default_action {
    target_group_arn = aws_alb_target_group.alb_tg.arn
    type             = var.http_listener_type
    redirect {
      port        = var.http_redirect_port
      protocol    = var.http_redirect_protocol
      status_code = var.http_redirect_status_code
    }
  }
}


# Create Route 53 DNS records pointing to the ALB
resource "aws_route53_record" "alb_dns_record" {
  name    = var.dns_record_name
  type    = var.dns_record_type
  zone_id = var.dns_hosted_zone_id # Replace with your Route 53 hosted zone ID

  alias {
    name                   = aws_alb.application_load_balancer.dns_name
    zone_id                = aws_alb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}
