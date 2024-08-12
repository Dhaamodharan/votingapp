variable "region" {
  description = "The AWS region to create the EKS cluster in."
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  default     = "energyweb-eks-cluster"
}

variable "node_instance_type" {
  description = "The EC2 instance type for the worker nodes."
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "The desired number of worker nodes."
  default     = 2
}

variable "max_size" {
  description = "The maximum number of worker nodes."
  default     = 3
}

variable "min_size" {
  description = "The minimum number of worker nodes."
  default     = 1
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
