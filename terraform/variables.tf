variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"  # Change as needed
}

variable "project_name" {
  description = "Project name for resource tagging"
  type        = string
  default     = "ml-workspace"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "g4dn.xlarge"  # GPU-enabled instance
}

variable "volume_size" {
  description = "Size of the EC2 root volume in GB"
  type        = number
  default     = 1000  # 1TB as requested
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks allowed for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Should be restricted in production
}
