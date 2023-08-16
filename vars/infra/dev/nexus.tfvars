region                      = "us-west-2"

#Instance Variables
ami_id                      = "ami-0f4e949f4afa4e5a9"
instance_count              = 1
instance_type               = "t2.medium"
key_name                    = "techiescamp"
vpc_id                      = "vpc-0a5ca4a92c2e10163"
subnet_ids                  = ["subnet-058a7514ba8adbb07", "subnet-0dbcd1ac168414927", "subnet-032f5077729435858"]
associate_public_ip_address = true
attach_eip                  = true

# CIDR Ingress Variables
create_ingress_cidr         = true
ingress_cidr_from_port      = [22, 8081]
ingress_cidr_to_port        = [22, 8081]
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
environment                 = "dev"
cost_center                 = "techiescamp-commerce"
application                 = "nexus"