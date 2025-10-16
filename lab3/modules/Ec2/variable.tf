variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default = "ami-02d26659fd82cf299"
  
}
variable "key_name" {
  description = "The key name for the EC2 instance"
  type        = string
  default     = "AWS-key"
  
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {
    Name = "ec2-webserver"
    Project     = "project1"
  }
}
variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
  default     = "subnet-03f2c6150261ef69d"
  
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EC2 instance"
  type        = list(string)
  default     = ["sg-08900fe012899b7ac"]
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}
