region                      = "us-west-2"

#IAM Policy
iam_policy_json_file        = "jenkins-controller.json"

#Instance Variables
ami_id                      = "ami-0065c2afde789d6c4"
instance_count              = 1
instance_type               = "t2.micro"
key_name                    = "techiescamp"
vpc_id                      = "vpc-062e91b98392ca9a2"
subnet_ids                  = ["subnet-034b5b81e1ee5e653", "subnet-0bfbbe8efe880be15", "subnet-059ad803aa3c5d9c5"]
associate_public_ip_address = true
attach_instance_profile     = true

# CIDR Ingress Variables
create_ingress_cidr         = true
ingress_cidr_from_port      = [22, 8080]
ingress_cidr_to_port        = [22, 8080]
ingress_cidr_protocol       = ["tcp", "tcp"]
ingress_cidr_block          = ["0.0.0.0/0", "0.0.0.0/0"]

# Security Group Ingress Variables
create_ingress_sg           = false
ingress_sg_from_port        = [50000]
ingress_sg_to_port          = [50000]
ingress_sg_protocol         = ["tcp"]

# CIDR Egress Variables
create_egress_cidr          = true
egress_cidr_from_port       = [0]
egress_cidr_to_port         = [0]
egress_cidr_protocol        = ["-1"]
egress_cidr_block           = ["0.0.0.0/0"]

# Security Group Egress Variables
create_egress_sg            = false
egress_sg_from_port         = [0]
egress_sg_to_port           = [0]
egress_sg_protocol          = ["-1"]

#tags
owner                       = "techiescamp"
environment                 = "prod"
cost_center                 = "techiescamp-commerce"
application                 = "jenkins-controller"