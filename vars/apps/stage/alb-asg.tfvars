region = "us-west-2"

#IAM Policy
iam_policy_json_file = "alb-asg.json"

# alb
internal          = false
loadbalancer_type = "application"
alb_subnets       = ["subnet-0f799bf13fe34b2d1", "subnet-08de0ab5307a90bae", "subnet-0b5107f4694760f2c"]

#alb-sg
alb_ingress_cidr_from_port = [80, 443]
alb_ingress_cidr_to_port   = [80, 443]
alb_ingress_cidr_protocol  = ["tcp", "tcp"]
alb_ingress_cidr_block     = ["0.0.0.0/0", "0.0.0.0/0"]
alb_create_ingress_cidr    = true

alb_ingress_sg_from_port = [8080]
alb_ingress_sg_to_port   = [8080]
alb_ingress_sg_protocol  = ["tcp"]
alb_create_ingress_sg    = false

alb_egress_cidr_from_port = [0]
alb_egress_cidr_to_port   = [0]
alb_egress_cidr_protocol  = ["-1"]
alb_egress_cidr_block     = ["0.0.0.0/0"]
alb_create_egress_cidr    = true

alb_egress_sg_from_port = [0]
alb_egress_sg_to_port   = [0]
alb_egress_sg_protocol  = ["-1"]
alb_create_egress_sg    = false

# instance sg
ingress_cidr_from_port = [22, 3389]
ingress_cidr_to_port   = [22, 3389]
ingress_cidr_protocol  = ["tcp", "tcp"]
ingress_cidr_block     = ["0.0.0.0/0", "0.0.0.0/0"]
create_ingress_cidr    = true

ingress_sg_from_port = [8080]
ingress_sg_to_port   = [8080]
ingress_sg_protocol  = ["tcp"]
create_ingress_sg    = true

egress_cidr_from_port = [0]
egress_cidr_to_port   = [0]
egress_cidr_protocol  = ["-1"]
egress_cidr_block     = ["0.0.0.0/0"]
create_egress_cidr    = true

egress_sg_from_port = [8080]
egress_sg_to_port   = [8080]
egress_sg_protocol  = ["tcp"]
create_egress_sg    = false

# target_group
target_group_port        = 8080
target_group_protocol    = "HTTP"
target_type              = "instance"
load_balancing_algorithm = "round_robin"

# health_check
health_check_path                = "/"
health_check_port                = 8080
health_check_protocol            = "HTTP"
health_check_interval            = 30
health_check_timeout             = 5
health_check_healthy_threshold   = 2
health_check_unhealthy_threshold = 2

#http_alb_listener
http_listener_port        = 80
http_listener_protocol    = "HTTP"
http_listener_type        = "redirect"
http_redirect_port        = "443"
http_redirect_protocol    = "HTTPS"
http_redirect_status_code = "HTTP_301"

#https_alb_listener
https_listener_port       = 443
https_listener_protocol   = "HTTPS"
https_listener_ssl_policy = "ELBSecurityPolicy-2016-08"
https_listener_type       = "forward"

#alb_dns_records
dns_record_name    = "petclinic.devopsproject.dev"
dns_record_type    = "A"
dns_hosted_zone_id = "Z044775511DCQ7IHFO1WH"


#launch_template
#ami_id        = "ami-06f8c05abb6b29ac0"
instance_type = "t2.medium"
key_name      = "techiescamp"
vpc_id        = "vpc-062e91b98392ca9a2"
asg_subnets   = ["subnet-0f799bf13fe34b2d1", "subnet-08de0ab5307a90bae", "subnet-0b5107f4694760f2c"]
public_access = true

# user_data
user_data = <<-EOF
#!/bin/bash
sudo sed -i 's/start_join = ["35.162.64.207"]/start_join = ["44.241.185.22"]/' /etc/consul.d/config.hcl
/home/ubuntu/start.sh
EOF


#autoscaling_group
max_size             = 5
min_size             = 3
desired_capacity     = 3
propagate_at_launch  = true
instance_warmup_time = 30
target_value         = 50

#acm_configurations
domain_name                                 = "petclinic.devopsproject.dev"
validation_method                           = "DNS"
key_algorithm                               = "RSA_2048"
certificate_transparency_logging_preference = "ENABLED"
dns_domain_name                             = "devopsproject.dev"
dns_private_zone                            = false
acm_dns_record_overwrite                    = true
acm_dns_record_ttl                          = 300


#tags
owner       = "techiescamp"
environment = "stage"
cost_center = "techiescamp-commerce"
application = "java-app"




