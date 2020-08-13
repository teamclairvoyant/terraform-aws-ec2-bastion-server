variable "enabled" {
  type        = bool
  default     = true
  description = "When disabled, module will not create any resources"
}

variable "namespace" {
  description = "Namespace (e.g. `eg` or `cp`)"
  type        = string
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = string
}

variable "name" {
  description = "Name  (e.g. `app` or `bastion`)"
  type        = string
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map('BusinessUnit`,`XYZ`)"
}

variable "zone_id" {
  type        = string
  default     = ""
  description = "Route53 DNS Zone ID"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Elastic cache instance type"
}

variable "ami" {
  type        = map
  default     = {
    us-east-1 = "ami-0a887e401f7654935"
    us-east-2 = "ami-0e38b48473ea57778"
    us-west-1 = "ami-01c94064639c71719"
    us-west-2 = "ami-0e8c04af2729ff1bb"
  }
  #description = "Amazon Linux 2 AMI (HVM), SSD Volume Type"
  description = "AMI to use"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "subnets" {
  type        = list(string)
  description = "AWS subnet IDs"
}

variable "user_data" {
  type        = list(string)
  default     = []
  description = "User data content"
}

variable "key_name" {
  type        = string
  default     = ""
  description = "Key name"
}

variable "ssh_user" {
  type        = string
  description = "Default SSH user for this AMI. e.g. `ec2user` for Amazon Linux and `ubuntu` for Ubuntu systems"
}

variable "ingress_security_groups" {
  type        = list(string)
  description = "AWS security group IDs allowed ingress to instance"
  default     = []
}

variable "security_groups" {
  type        = list(string)
  description = "AWS security group IDs associated with instance"
  default     = []
}

variable "allowed_cidr_blocks" {
  type        = list(string)
  description = "A list of CIDR blocks allowed to connect"

  default = [
    "0.0.0.0/0",
  ]
}
