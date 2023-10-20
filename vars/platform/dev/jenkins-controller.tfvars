region = "us-west-2"

#IAM Policy
iam_policy_json_file = "jenkins-controller.json"

#Instance Variables
ami_id                      = "ami-09c28fb4a6cef7012"
instance_count              = 1
instance_type               = "t2.medium"
key_name                    = "techiescamp"
vpc_id                      = "vpc-062e91b98392ca9a2"
subnet_ids                  = ["subnet-034b5b81e1ee5e653", "subnet-0bfbbe8efe880be15", "subnet-059ad803aa3c5d9c5"]
associate_public_ip_address = true
attach_instance_profile     = true
attach_eip                  = true
storage_size                = 10

# CIDR Ingress Variables
create_ingress_cidr    = true
ingress_cidr_from_port = [22, 8080]
ingress_cidr_to_port   = [22, 8080]
ingress_cidr_protocol  = ["tcp", "tcp"]
ingress_cidr_block     = ["0.0.0.0/0", "0.0.0.0/0"]

# CIDR Egress Variables
create_egress_cidr    = true
egress_cidr_from_port = [0]
egress_cidr_to_port   = [0]
egress_cidr_protocol  = ["-1"]
egress_cidr_block     = ["0.0.0.0/0"]

create_ingress_sg = false
create_egress_sg  = false


#tags
owner       = "techiescamp"
environment = "dev"
cost_center = "techiescamp-commerce"
application = "jenkins-controller"