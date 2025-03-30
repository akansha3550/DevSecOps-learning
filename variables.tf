# variable "aws_access_key" {}
# variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
  description = "AMIs by region"
  default = {
    us-east-1 = "ami-084568db4383264d4" # ubuntu 14.04 LTS
    us-east-2 = "ami-04f167a56786e4b09" # ubuntu 14.04 LTS
    us-west-1 = "ami-02bee0c11794ac328" # ubuntu 14.04 LTS
    us-west-2 = "ami-075686beab831bb7f" # ubuntu 14.04 LTS
  }
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
# variable "private_subnet_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
# variable "private_subnet_name" {}
variable "Main_Routing_Table" {}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "environment" { default = "dev" }
variable "env" {}
variable "instance_type" {
  type = map(string)
  default = {
    dev  = "t2.micro"
    test = "t2.micro"
    prod = "t2.micro"
  }
}


