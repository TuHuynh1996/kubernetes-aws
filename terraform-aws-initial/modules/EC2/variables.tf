variable "project_name" {
  default     = "gpt-api"
  type        = string
  description = "project name injected into task"
}

// Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-03-25
variable "ami" {
  default     = "ami-0a695f0d95cefc163"
  type        = string
  description = "ami id for creating Ec2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.medium"
  description = "instance type for creating EC2 instance"
}

variable "vpc_id" {
  type        = string
  description = "VPC id for security group"
}

variable "subnet_id" {
  type        = string
  description = "subnet id for EC2 instance to be included"
}