region                      = "us-west-2"

#Instance Variables
ami_id                      = "ami-0065c2afde789d6c4"
instance_count              = 1
instance_type               = "t2.micro"
key_name                    = "techiescamp"
vpc_id                      = "vpc-0a5ca4a92c2e10163"
subnet_ids                  = ["subnet-058a7514ba8adbb07", "subnet-0dbcd1ac168414927", "subnet-032f5077729435858"]
associate_public_ip_address = true

# CIDR Ingress Variables
ingress_cidr_from_port      = [22, 80, 8080]
ingress_cidr_to_port        = [22, 80, 8080]
ingress_cidr_protocol       = ["tcp", "tcp", "tcp"]
ingress_cidr_block          = ["0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0"]

# CIDR Egress Variables
egress_cidr_from_port       = [0]
egress_cidr_to_port         = [0]
egress_cidr_protocol        = ["-1"]
egress_cidr_block           = ["0.0.0.0/0"]

#tags
owner                       = "techiescamp"
environment                 = "stage"
cost_center                 = "techiescamp-commerce"
application                 = "jenkins"